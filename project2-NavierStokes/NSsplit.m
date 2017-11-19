uy = @(y, t) ( real(exp( -sqrt(1i/500/16.1).*y + 500i*t )) ); % the velocity function u(y, t)
y = linspace(0, 1000, 1000); % create a series of height
k = 0.006;
u = uy(y, k);
plot(u, y); % plot the velocity with respect to height
hold on
xlim([-1 1]) % set x axis scale
title('The Velocity Profile at t=0.006')