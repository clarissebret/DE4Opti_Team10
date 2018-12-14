
% Individual component cost

Cdeck = 18.80;
Cwheel = 0.5445;
Ctruck = 170.64;

% Total cost

C = Cdeck + 4*Cwheel + Ctruck;

fprintf('\nDeck costs £%.2f.\n',Cdeck)
fprintf('Wheels cost £%.2f per unit.\n',Cwheel)
fprintf('The cost of electronics and trucks extrapolated from an off-shelf component is £%.2f.\n',Ctruck)
fprintf('\nThe total cost of the skateboard is £%.2f.\n',C)
