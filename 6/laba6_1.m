clear all;
format long g 
function [y] = f(x)
y=3*x.^4 - 0.8*x.^3-1.2*x.^2-15*x;
endfunction
a = -7; b = 1; h = 0.25;
x=a-h:h:b+h; 
plot(x, @f(x), 'k', 'linewidth', 2.75);
hold on; grid on;
eps=0.001; k=1;
a0 = a; b0 = b;
do
ya = deriv (@f, a, 1);
yb = deriv (@f, b, 1);
plot(a0, ya,"kv", 'markersize',14,'linewidth', 1.5,
b0, yb,"kd", 'markersize',14, 'linewidth', 1.5 )
x1=(b+a)/2.
df1 = deriv (@f, x1, 1)
plot(x1, df1, "k.", 'markersize',36,
a, @f(a), "k>", 'markersize',16,'linewidth', 1.5,
b, @f(b), "k<", 'markersize',16,'linewidth', 1.5)
if (df1 < 0)
a=x1;
else
b=x1;
endif;
k++;
until (abs(df1)<eps)
hl = legend('-sin(x)','y_{a}', 'y_{b}',
"f'(x_{1})",'\itf(a)','\itf(b)');
set(hl, 'fontsize', 20, 'location', 'eastoutside')
set(gca, 'linewidth', 1.75, 'fontsize', 20, 'gridalpha',
0.65);
hold off