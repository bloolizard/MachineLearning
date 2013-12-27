% Assignmnet 8 Helper Function
% Edwin Villanueva
% 12/26/2013

%% Initialization
clear ; close all; clc

%  The following command loads the dataset. You should now have the
%  variables X, Xval, yval in your environment
load('ex8data1.mat');
[m, n] = size(X);


mu = zeros(n, 1);
sigma2 = zeros(n, 1);
%  Estimate my and sigma2
[mu sigma2] = estimateGaussian(X);

pval = multivariateGaussian(Xval, mu, sigma2);

[epsilon F1] = selectThreshold(yval, pval);