%uy = @(y, t) ( real(exp( -sqrt(1i/500/16.1).*y + 500i*t )) ); % the velocity function u(y, t)
uy = @(y, t)(exp( -2*pi.*y).*cos(500*t - 2*pi.*y)); % the velocity function u(y, t)
y = linspace(0, 1.25, 1000); % create a series of height
ks = [0, 0.003, 0.006, 0.008, 0.01]; 
for k = ks
    u = uy(y, k); % calculate an array of velocity
    plot(u, y); % plot the velocity with respect to height
    hold on
end
title('The Velocity Profile at Different Time')
legend('t = 0','t = 0.003','t = 0.006','t = 0.008','t = 0.01')
xlim([-1 1]) % set x axis scale
ylim([0 1.25])