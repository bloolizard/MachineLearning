% Second Helper Function
%
%
%

%% Initialization
clear ; close all; clc

load ('ex7data1.mat');


[X_norm, mu, sigma] = featureNormalize(X);

[m, n] = size(X_norm);

U = zeros(n);
S = zeros(n);

[U, S] = pca(X_norm);

%  Project the data onto K = 1 dimension
K = 1;
Z = projectData(X_norm, U, K);


X_rec  = recoverData(Z, U, K);
