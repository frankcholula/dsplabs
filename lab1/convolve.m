function [y,ny] = convolve(x,h,nx,nh)
    nymin = nx(1) + nh(1);
    nymax = nx(length(x)) + nh(length(h));
    ny = [nymin: nymax];
    y = conv(x,h);
end
