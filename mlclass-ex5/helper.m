% Assignment 5 | Helper Function
% by Edwin Villanueva
%  12/07/2013

%% Initialization
clear ; close all; clc

% Load Training Data
fprintf('Loading and Visualizing Data ...\n')

% Load from ex5data1: 
% You will have X, y, Xval, yval, Xtest, ytest in your environment
load ('ex5data1.mat');

% m = Number of examples
m = size(X, 1);

%X = [ones(m, 1) X];

%theta = [1 ; 1];

%h = X * theta;

%n = size(X,2);
%lambda = 1;
% You need to return these values correctly
%error_train = zeros(m, 1);
%error_val   = zeros(m, 1);

p = 8;

X_poly = polyFeatures(X, p);
[X_poly, mu, sigma] = featureNormalize(X_poly);  % Normalize
X_poly = [ones(m, 1), X_poly];                   % Add Ones

X_poly_val = polyFeatures(Xval, p);

lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';
error_train = zeros(length(lambda_vec), 1);
error_val = zeros(length(lambda_vec), 1);

[error_train, error_val] = validationCurve(X_poly, y, X_poly_val, yval);