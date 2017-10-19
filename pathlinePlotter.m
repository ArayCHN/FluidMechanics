t = 0;
dt = 0.2;
x0 = -1.1; y0 = 0.02; % init position
x = zeros(1, 500001); y = zeros(1, 500001);
idx = 1; % step index
% while t <= 100000
%     x(idx) = x0;
%     y(idx) = y0;
% %     u = ((x0+t)^2 - y0^2) / ((x0+t)^2 + y0^2);
% %     v = 2*y0*(x0+t)/(y0^2 + (x0+t)^2);
% %     x0 = x0 + dt*u;
% %     y0 = y0 + dt*v; % update position
%     R = sqrt((x0+t)^2 + y0^2);
%     c = (x0+t)/R;
%     s = y0/R;
%     u = -1/R^2*c;
%     v = -1/R^2*s;
%     x0 = x0 + dt*u;
%     y0 = y0 + dt*v; % update position
%     idx = idx + 1;
%     t = t + dt;
% end
[~, y] = ode45(@odefunx, [0, 100000], [-1.1; 0.2]);
plot(y(:,1), y(:,2));
%plot(x(1:idx-1), y(1:idx-1))
set(gca,'XLim',[-4 4],'YLim',[-4 4])