function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = size(X,2); % number of features for X

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


J = costFunction(theta, X, y);

temp = theta; % make a copy of theta
temp(1) = 0;
J = J + lambda/(2 * m) * sum(temp.^2);

h = sigmoid(theta' * X');

grad(1) = (1/m) * sum( (h'-y) .* X(:,1) );

for i=2:n,
	grad(i) = (1/m) * sum( (h'-y) .* X(:,i) ) + (lambda/m * theta(i));
end





% =============================================================

end
