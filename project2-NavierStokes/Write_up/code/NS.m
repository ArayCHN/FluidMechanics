uy = @(y, t) ( real(exp( -sqrt(1i*500/16.1).*y + 500i*t )) ); % the velocity function u(y, t)
y = linspace(0, 2, 1000); % create a series of height
for k = 0:4
    u = uy(y, k);
    plot(u, y); % plot the velocity with respect to height
    hold on
end
axis equal
title('The Velocity Profile at Different Time')
legend('t = 0','t = 1','t = 2','t = 3','t = 4')