xst = [-2 2 -0.75 -0.75 -0.5 -0.5 -0.25 -0.25]';
yst = [0 0 1 -1 1 -1 1 -1]';
x = [-4:0.01:4]; y = x; n = size(x, 2);
x = repmat(x, n, 1); y = repmat(y', 1, n);
t = 0;
u = ((x+t).^2-y.^2)./((x+t).^2+y.^2).^2; v = 2*(x+t).*y./((x+t).^2+y.^2).^2; vel = (v.^2+u.^2).^0.5;
contourf(x, y, vel, [0.03, 0.05, 0.1, 0.2, 0.4, 1.0, 2, 4, 8, 20])
hold on
streamlinePlotter(x(1, :), y(:, 1), u, v, xst, yst)