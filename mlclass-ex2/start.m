data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);
[m, n] = size(X);
X = [ones(m, 1) X];

initial_theta = zeros(n + 1, 1);
