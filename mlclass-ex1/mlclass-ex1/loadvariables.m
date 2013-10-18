## Copyright (C) 2013 Edwin
## 
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
## loadvariables

## Author: Edwin <Edwin@EDWIN-PC>
## Created: 2013-10-17

% ez script for loading initial variables

data = load('ex1data1.txt');

X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples
X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters
iterations = 1500;
num_iters = iterations;
alpha = 0.01;
J_history = zeros(num_iters, 1);
fprintf('Loading variables completed\n');

