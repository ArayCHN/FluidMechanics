function streamlinePlotter(x0, y0)
% hold off % prevent covering last figure  
ds = 0.001; % set the step to be 0.001
  for i = 1 : size(x0, 1)
  xNew = x0(i); yNew = y0(i); % set the initial location
  x1=-4; xe=4; y1=-4; ye=4;
  t=0;
  x = zeros(10000); y = zeros(10000);
  tot = 0;
  while exceed(xNew, yNew, -4, 4, -4, 4) == 0 %&& visited(xNew, yNew, x, y) == 0
    % if reaches edge or reaches a point for the second time, stop plotting
    tot = tot + 1;
    x(tot) = xNew; y(tot) = yNew;
    u = ((xNew+t).^2-yNew.^2)./((xNew+t).^2+yNew.^2).^2;
    v = 2*(xNew+t).*yNew./((xNew+t).^2+yNew.^2).^2;
    xNew = xNew + ds * u;
    yNew = yNew + ds * v;
  end
  ds = -ds;
  xNew = x0(i); yNew = y0(i);
  x2 = zeros(10000); y2 = zeros(10000);
  tot2 = 0;
  while exceed(xNew, yNew, -4, 4, -4, 4) == 0 %&& visited(xNew, yNew, x, y) == 0
    % if reaches edge or reaches a point for the second time, stop plotting
    tot2 = tot2 + 1;
    x2(tot2) = xNew; y2(tot2) = yNew;
    u = ((xNew+t).^2-yNew.^2)./((xNew+t).^2+yNew.^2).^2;
    v = 2*(xNew+t).*yNew./((xNew+t).^2+yNew.^2).^2;
    xNew = xNew + ds * u;
    yNew = yNew + ds * v;
  end
  ds = -ds;
  plot(x(1:tot), y(1:tot));
  plot(x2(1:tot2), y2(1:tot2));
  hold on % draw on the same figure
  end
end

function check = exceed(x, y, x1, xe, y1, ye) % check if point exceeds the graph boundary
  check = false;
  if (x > xe) || (x < x1) || (y < y1) || (y > ye)
      check = true;
  end
  if (x^2 + y^2 < 2.1*1e-4), check = true;end
end

function check = visited(xNew, yNew, x, y) % check if a point is visited before
  check = false;
  if ismember([xNew; yNew], [x; y])
      check = true;
  end
end