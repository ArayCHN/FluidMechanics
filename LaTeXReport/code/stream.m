x = linspace(0, 1, 63);
y = linspace(0, 1, 63);
[xst, yst] = ginput(10);
hold on
streamlinePlotter(x, y, udata, vdata, xst, yst);