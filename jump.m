function dzdt = jump(t, z)
global m c s g v0 teta ro

x = z(1);
y = z(2);
vx = z(3);
vy = z(4);

xdot = vx;
ydot = vy;
b = c*ro*s/(2*m);
v = sqrt(z(3)^2 + z(4)^2);
vxdot = -b * vx * v;
vydot = -g - b * vy * v;

dzdt = [xdot; ydot; vxdot; vydot];