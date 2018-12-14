filename = 'LoadperWheel.xlsx';
%% 60A Hardenss Polynomial Fitting
OD = xlsread(filename, '60A Clean', 'A1:A17'); %grabs the outer diameter values
W = xlsread(filename, '60A Clean', 'B1:B14'); %grabs the width/thickness values
LW = xlsread(filename, '60A Clean', 'C1:O17'); %grabs the max load per wheel values
figure()
surf(W,OD,LW) %plots the table of values for a visual representation
title('60A Hardness: Max Load per Wheel vs Width & Outer Diameter')
zlabel('Max Load per Wheel')
ylabel('Outer Diameter', 'Rotation', -30)
xlabel('Width', 'Rotation', 20)
% in order to fit the demands of polyfitn, the table of values was reshaped in excel
% check the XA Polyfitn Sheets to see the correct format.
X1 = xlsread(filename, '60A Polyfitn', 'A1:A221');
X2 = xlsread(filename, '60A Polyfitn', 'B1:B221');
Y = xlsread(filename, '60A Polyfitn', 'C1:C221');
X = [X1, X2];
p1 = polyfitn(X, Y, 1) %the explanation for choosing a degree of 1 can be found in the report. 
polynomial1 = polyn2sym(p1) %this generates the polynomial that fits the table of data. 
%% 70A Hardenss Polynomial Fitting
OD = xlsread(filename, '70A Clean', 'A1:A17');
W = xlsread(filename, '70A Clean', 'B1:B14');
LW = xlsread(filename, '70A Clean', 'C1:O17');
figure()
surf(W,OD,LW)
title('70A Hardness: Max Load per Wheel vs Width & Outer Diameter')
zlabel('Max Load per Wheel')
ylabel('Outer Diameter', 'Rotation', -30)
xlabel('Width', 'Rotation', 20)
X1 = xlsread(filename, '70A Polyfitn', 'A1:A221');
X2 = xlsread(filename, '70A Polyfitn', 'B1:B221');
Y = xlsread(filename, '70A Polyfitn', 'C1:C221');
X = [X1, X2];
p2 = polyfitn(X, Y, 1)
polynomial2 = polyn2sym(p2)
%% 80A Hardenss Polynomial Fitting
OD = xlsread(filename, '80A Clean', 'A1:A17');
W = xlsread(filename, '80A Clean', 'B1:B14');
LW = xlsread(filename, '80A Clean', 'C1:O17');
figure()
surf(W,OD,LW)
title('80A Hardness: Max Load per Wheel vs Width & Outer Diameter')
zlabel('Max Load per Wheel')
ylabel('Outer Diameter', 'Rotation', -30)
xlabel('Width', 'Rotation', 20)
X1 = xlsread(filename, '80A Polyfitn', 'A1:A221');
X2 = xlsread(filename, '80A Polyfitn', 'B1:B221');
Y = xlsread(filename, '80A Polyfitn', 'C1:C221');
X = [X1, X2];
p3 = polyfitn(X, Y, 1)
polynomial3 = polyn2sym(p3)
%% 90A Hardenss Polynomial Fitting
OD = xlsread(filename, '80A Clean', 'A1:A17');
W = xlsread(filename, '80A Clean', 'B1:B14');
LW = xlsread(filename, '80A Clean', 'C1:O17');
figure()
surf(W,OD,LW)
title('90A Hardness: Max Load per Wheel vs Width & Outer Diameter')
zlabel('Max Load per Wheel')
ylabel('Outer Diameter', 'Rotation', -30)
xlabel('Width', 'Rotation', 20)
X1 = xlsread(filename, '80A Polyfitn', 'A1:A221');
X2 = xlsread(filename, '80A Polyfitn', 'B1:B221');
Y = xlsread(filename, '80A Polyfitn', 'C1:C221');
X = [X1, X2];
p4 = polyfitn(X, Y, 1)
polynomial4 = polyn2sym(p4)
