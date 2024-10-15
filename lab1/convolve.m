function [y,ny] = convolve(x,h,nx,nh)
    nymin = nx(1) + nh(1);
    nymax = nx(end) + nh(end);
    ny = [nymin: nymax];
    y = conv(x,h);
end

