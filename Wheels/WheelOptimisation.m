%% Constant Definition
Rb = 0.022; %outer radius of the inner bearing
Ppu = 1240; %density of Polyurethane
Cpu = 3.08; %cost of Polyurethane
Pabs = 1060; %density of ABS
Cabs = 0.65; %cost of ABS
%% Define Fmincon Algorithm
opts = optimoptions(@fmincon, 'Algorithm', 'sqp');
%% Function
fun = @(x)Ppu*Cpu*pi*x(2).*((x(1)/2).^2-Rb.^2)+Pabs*Cabs*pi*x(2).*((x(3)/2).^2-(Rb/2).^2); %Polyurethane volume + ABS volume
x0 = [0, 0, 0]; %Initial point
A = [-0.7 1 0    %Thickness is 70% the outer radius
    -0.533 0 1]; %Inner radius is 53.33% the outer radius
b = [0 0];
lb = [0.065, 0.05, 0.032]; %lower bound constraint
ub = [0.1, 0.07, 0.035]; %upper bound constraint
%% 60A Hardness
Aeq = [-249.24, -949.74, 0];
beq = -112.71499;
[min1, fval1] = fmincon(fun, x0, A, b, Aeq, beq, lb, ub, [], opts)
[min2, fval2] = ga(fun, 3, A, b, Aeq, beq, lb, ub);

%% 70A Hardness
Aeq = [-301.86, -1453.91, 0];
beq = -121.25436;
[min3, fval3] = fmincon(fun, x0, A, b, Aeq, beq, lb, ub, [], opts);
[min4, fval4] = ga(fun, 3, A, b, Aeq, beq, lb, ub);

%% 80A Hardness
Aeq = [-434.49, -2129.98, 0];
beq = -141.17429;
[min5, fval5] = fmincon(fun, x0, A, b, Aeq, beq, lb, ub, [], opts);
[min6, fval6] = ga(fun, 3, A, b, Aeq, beq, lb, ub);

%% 90A Hardness
Aeq = [-897.89, -4267.76, 0];
beq = -212.16041;
[min7, fval7] = fmincon(fun, x0, A, b, Aeq, beq, lb, ub, [], opts);
[min8, fval8] = ga(fun, 3, A, b, Aeq, beq, lb, ub);

%% Showing the Results
f = figure;
uit = uitable(f);
d = {'60A', min1(1), min1(2), min1(3), fval1, true, false;'70A', min3(1), min3(2),min3(3), fval3, false, false;'80A', min5(1), min5(2),min5(3), fval5, false, true;'90A', min7(1), min7(2),min7(3), fval7, false, false};
uit.Data = d;
uit.Position = [20 20 490 100];
uit.ColumnName = {'Hardness','do','t', 'di', 'Value', 'Load Fail', 'Optimal Hardness'};
