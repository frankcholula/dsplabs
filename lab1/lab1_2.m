% Create figure for subplots
figure;

% i) y = x * x, with x = [0, 0, 1, 1, 1]
x = [0,0,1,1,1];
nx = -2:2;
[y, ny] = convolve(x, x, nx, nx);
subplot(3,1,1); % First subplot
stem(ny, y);
title('Convolution: x * x');
xlabel('n');
ylabel('y[n]');

% ii) y = x * h, with x = [0, 0, 1, 1, 1] and h = [1, 1]
x = [0,0,1,1,1];
nx = -2:2;
h = [1,1];
nh = 0:1;
[y, ny] = convolve(x, h, nx, nh);
subplot(3,1,2); % Second subplot
stem(ny, y);
title('Convolution: x * h with h = [1, 1]');
xlabel('n');
ylabel('y[n]');

% iii) y = x * h, with x = [0, 0, 1, 1] and h = [0.5, 0.5] (rounded results)
x = [0,0,1,1];
nx = 0:3;
h = [0.5,0.5];
nh = 0:1;
[y, ny] = convolve(x, h, nx, nh);
subplot(3,1,3); % Third subplot
stem(ny, y);
title('Convolution: x * h with h = [0.5, 0.5]');
xlabel('n');
ylabel('y[n]');

% Display the figure
sgtitle('Convolution Examples');