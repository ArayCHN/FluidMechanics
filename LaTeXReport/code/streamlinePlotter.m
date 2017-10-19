function streamlinePlotter(xcoord, ycoord, udata, vdata, x0, y0)
% hold off % prevent covering last figure  
ds = 0.001; % set the step to be 0.001
n = max(size(xcoord));
  for i = 1 : size(x0, 1)
  xNew = x0(i); yNew = y0(i); % set the initial location
  x = []; y = [];
  while exceed(xNew, yNew, xcoord, ycoord) == 0 && visited(xNew, yNew, x, y) == 0
    % if reaches edge or reaches a point for the second time, stop plotting
    x = [x, xNew]; y = [y, yNew];
    xint = (xNew-xcoord(1)) / (xcoord(end)-xcoord(1)+0.0) * (n-1) + 1; % scale for interpolation
    yint = (yNew-ycoord(1)) / (ycoord(end)-ycoord(1)+0.0) * (n-1) + 1;
    u = interp2(udata, xint, yint);
    % scale (xNew, yNew) up to interpolate
    v = interp2(vdata, xint, yint);
    xNew = xNew + ds * u;
    yNew = yNew + ds * v;
  end
  plot(x, y);
  hold on % draw on the same figure
  end
end

function check = exceed(x, y, xcoord, ycoord) % check if point exceeds the graph boundary
  check = false;
  if (x > xcoord(end)) || (x < xcoord(1)) || (y < ycoord(1)) || (y > ycoord(end))
      check = true;
  end
end

function check = visited(xNew, yNew, x, y) % check if a point is visited before
  check = false;
  if ismember([xNew; yNew], [x; y])
      check = true;
  end
end