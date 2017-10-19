t = 0;
dt = 0.2; % as required in the problem statement
x0 = -1.1; y0 = 0.02; % init position
x = zeros(1, 500001); y = zeros(1, 500001);
idx = 1; % step index
while t <= 100000
    x(idx) = x0;
    y(idx) = y0;
    R = sqrt((x0+t)^2 + y0^2);
    c = (x0+t)/R;
    s = y0/R;
    cosine = x0/sqrt(x0^2+y0^2); % polar-cartesian angle
    sine = y0/sqrt(x0^2+y0^2);
    u_r = -1/R^2*c; % u_r
    u_t = -1/R^2*s; % u_theta
    u = u_r*cosine-u_t*sine; % velocity in cartesian space
    v = u_r*sine+u_t*cosine;
    x0 = x0 + dt*u;
    y0 = y0 + dt*v; % update position
    idx = idx + 1;
    t = t + dt;
end
plot(x(1:idx-1), y(1:idx-1))
set(gca,'XLim',[-4 4],'YLim',[-4 4])