fprintf("Cost Function started...\n");

%layer 1
a_1 = [ones(m,1) X]; 

%layer 2
z_2 = a_1 * Theta1';
a_2 = sigmoid(z_2);
a_2 = [ones(m,1) a_2];

%layer 3
z_3 = a_2 * Theta2';
a_3 = sigmoid(z_3);
hx = a_3;

ry = eye(num_labels)(y,:); % **  
J = sum(sum(-ry.*log(hx)-(1-ry).*log(1-hx))')/m;

%starting regularization
temp1 = Theta1;
temp1(:,1) = [];
temp1 = temp1.^2;

temp2 = Theta2;
temp2(:,1) = [];
temp2 = temp2.^2;

J = J + lambda/(2*m)*(sum(sum(temp1'))+ sum(sum(temp2'))) ;

% starting backpropagation
fprintf("Starting backpropagation\n");
d_3 = a_3 - ry;
d_2 = d_3 * Theta2 .* (a_2.*(1-a_2));
d_2 = d_2(:,2:end);
d_1 = d_2 * Theta1 .* (a_1.*(1-a_1));