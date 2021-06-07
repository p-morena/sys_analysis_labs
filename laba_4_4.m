% Truncated data
x=[4,70; 5.8; 6.9; 8.1; 9.15; 10.45; 11.45; 12.78; 13.35; 14.71];
y=[14.7; 13.25; 11.65; 11.01; 10.55; 9.91; 9.52; 9.05; 8.9; 8.45];
xy = [x;y];

% Curve length parameter
ds = sqrt(diff(x).^2 + diff(y).^2);
s = [0, cumsum(ds)];

% Constraints at s = 0: (x,y) = (0,0), (dx/ds,dy/ds) = (0,1)
con = struct('xc',[0 0],'yc',[0 0; 0 1],'cc',eye(2));

% Fit a spline with 4 pieces
pp = splinefit(s,xy,4,con);

% Plot
figure(5)
ss = linspace(0,s(end),400);
xyfit = ppval(pp,ss);
xyb = ppval(pp,pp.breaks);
plot(x,y,'.',xyfit(1,:),xyfit(2,:),'r',xyb(1,:),xyb(2,:),'ro')
legend('data','spline','breaks')
grid on, axis equal
