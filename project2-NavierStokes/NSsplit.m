uy = @(y, t)(exp( -2*pi.*y).*cos(500*t - 2*pi.*y)); % the velocity function u(y, t)
y = linspace(0, 1.25, 1000); % create a series of height
k = 0.0;
u = uy(y, k);
fig = plot(u, y); % plot the velocity with respect to height
hold on
xlim([-1 1]) % set x axis scale
ylim([0 1.25])
title('The Velocity Profile at t=0s')