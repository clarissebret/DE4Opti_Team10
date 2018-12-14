# Cost optimisation of an electric skateboard
Authors: Clarisse Bret, Sergi Capdevila

The purpose of this project is to optimise the price of electric skateboards by focusing on the price of the deck and the wheels. The main barriers to price is safety in the shape of minimum load required to be supported. For the optimisation of both subsystems, `fmincon` and `ga` algorithmic models have been explored and applied. Results include a deck with a cost of £18.80 and wheels costing £0.54 each.

# Prerequesites

You will need to install the [Global Optimisation Toolbox](https://uk.mathworks.com/products/global-optimization.html).


# 1. Skateboard cost

Run [totalCost](https://github.com/clarissebret/DE4Opti_Team10/blob/master/Skateboard/totalCost.m). The objective function takes the cost of 3 components as input:
- The cost of truck combined with electronics. An average cost of £170.64 was extrapolated from off-shelf components.
- The optimum cost of the deck, obtained from [subsytem 1](https://github.com/clarissebret/DE4Opti_Team10/tree/master/Deck).
- The optimum cost of wheels per unit, obtained from [subsystem 2](https://github.com/clarissebret/DE4Opti_Team10/tree/master/Wheels).

# 2. Deck cost

## Start

- Open the [materialSelection](https://github.com/clarissebret/DE4Opti_Team10/blob/master/Deck/materialSelection.mat) data in your workspace to import properties of the 8 pre-selected materials.
- Execute [runScenario](https://github.com/clarissebret/DE4Opti_Team10/blob/master/Deck/runScenarios.m). This script runs 3 scenario segments:

    1. The deck is made of a single type of wood. As matrix, the ply is cut parallel to grain. As fibre, the ply is cut perpendicular to grain (e.g., transversal birch reinforced with longitudinal birch).
    2. The deck is made of a wood matrix reinforced by bamboo (e.g., transversal birch reinforced with bamboo).
    3. The deck is made of a wood matrix reinforced by glass fibres (e.g., transversal birch reinforced with PA66 glass fibre).
    
## Materials

The set of materials include Maple (acer rubrum), Birch (betula verrucosa), Pine (pinus elloittii), Bamboo, Ash (fraxinus excelsior), Oak (quercus virginiana), Beech (fagus sylvatica), PA66 (40% long glass fiber).

## How does it work?

For each material, [runScenario](https://github.com/clarissebret/DE4Opti_Team10/blob/master/Deck/runScenarios.m) runs two optimisation solvers:
   
- The gradient-based algorithm `fmincon` using global search.
- The genetic algorithm `ga`.

# 3. Wheel cost

## Start

- Execute [PolynomialFitting](https://github.com/sc8515/DE4Opti_Team10_Sergi/blob/master/Wheel/PolynomialFitting.m) to create a polynomial fit for each hardness table & generate a visual representation of the maximum load per wheel hardness tables. The results are 4 different polynomials that will work as constraints in their respective optimisation models. 

- Execute [WheelOptimisation](https://github.com/sc8515/DE4Opti_Team10_Sergi/blob/master/Wheel/WheelOptimisation.m) to find the optimal values for all 8 optimisation models (4 different models optimised with 2 different optimisation algorithms) 

## Materials

The materials chosen for the wheel are:
- Polyurethane: most commonly used material for the outer wheel. 
- ABS: chosen material for the core due to its properties, price & 3D printing possibilities. 

## How does it work?
For each hardness of polyurethane, [WheelOptimisation](https://github.com/sc8515/DE4Opti_Team10_Sergi/blob/master/Wheel/WheelOptimisation.m) runs two optimisation solvers:
   
- The gradient-based algorithm `fmincon` using global search.
- The genetic algorithm `ga`.
    
# References

- [fmincon](https://uk.mathworks.com/help/optim/ug/fmincon.html)
- [global search](https://uk.mathworks.com/help/gads/globalsearch.html)
- [genetic algorithm](https://uk.mathworks.com/help/gads/ga.html)

