function dydt = odefunx(t, y)
%     dydt = [((y(1)+t)^2-y(2)^2)/((y(1)+t)^2+y(2)^2)^2;...
%         2*(y(1)+t)*y(2)/((y(1)+t)^2+y(2)^2)^2];
R = sqrt((y(1)+t)^2 + y(2)^2);
    c = (y(1)+t)/R;
    s = y(2)/R;
    u = -1/R^2*c;
    v = -1/R^2*s;
    dydt=[u; v];
end