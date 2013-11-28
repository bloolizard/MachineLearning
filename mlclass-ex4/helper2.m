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
