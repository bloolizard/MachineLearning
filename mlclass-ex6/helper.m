% Helper Function for Assignment 6
% by Edwin Villanueva
% 12/08/2013

%% Initialization
clear ; close all; clc

fprintf('Loading and Visualizing Data ...\n')

% Load from ex6data1: 
% You will have X, y in your environment
%load('ex6data1.mat');


%x1 = [1 2 1]; x2 = [0 4 -1]; sigma = 2;
% x1 = x1(:); x2 = x2(:);

%load('ex6data2.mat');
%C = 1; sigma = 0.1;

load('ex6data3.mat');

[C, sigma] = dataset3Params(X, y, Xval, yval);