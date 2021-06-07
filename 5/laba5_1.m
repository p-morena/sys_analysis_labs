clc, clear all
function [y, xa, err, iter] = powell_opt(f, l, r, tol)
iter = 0; h = 0.5; x = zeros(-4, 4);
x(1) = (r + l) / 1.25;
x(2) = x(1) + h;
if (f(x(1)) > f(x(2)))
x(3) = x(1) + 2 * h;
else
x(3) = x(1) - h;
endif
do
iter += 1;
A = (x(2)^2 - x(3) ^ 2)*f(x(1)); B = (x(3)^2-
x(1)^2)*f(x(2));
C = (x(1)^2 - x(2) ^ 2)*f(x(3));

A1 = (x(2) - x(3)) * f(x(1)); B1 = (x(3) - x(1)) *
f(x(2));
C1 = (x(1) - x(2)) *(x(3));
xa = (A + B + C) / (2 * (A1 + B1 + C1));
x = sort(x);
if (abs(f(xa) - f(x(1))) < tol)
y = f(x(1)); err = [ abs(f(x(1)) - f(xa)), abs(x(1) -
xa)];
break;
endif
if (xa <= x(3))
x(3) = xa; x = sort(x);
elseif (xa >= x(1))
x(1) = xa; x = sort(x);
else
x(1) = xa;
endif
until (iter > int32(1 / tol))
endfunction