% Assignment 7 Helper Function
% by Edwin Villanueva
% 12/09/2013

%% Initialization
clear ; close all; clc

load('ex7data2.mat');

% Select an initial set of centroids
K = 3; % 3 Centroids
initial_centroids = [3 3; 6 2; 8 5];

% Find the closest centroids for the examples using the
% initial_centroids
idx = findClosestCentroids(X, initial_centroids);

[m n] = size(X);
centroids = zeros(K, n);
centroids = computeCentroids(X, idx, K);