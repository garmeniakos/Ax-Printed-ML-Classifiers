# Cross-layer Approximations for Printed ML Circuits

## Description

This section contains Verilog codes for available approximate models across four different classification algorithms: MLP-C (Multilayer Perceptron for Classification), MLP-R (Multilayer Perceptron for Regression), SVM-C (Support Vector Machine for Classification), and SVM-R (Support Vector Machine for Regression).

### Directory Structure

- **Only_coef_approx**: Contains models with "only coefficient approximation."
  
- **coef_approx&pruning**: Features our proposed approximate models that utilize "coefficient approximation & pruning" and "pruning" strategies for different accuracy thresholds (e.g., 1%, 2%, 5%).

- **cross_approx**: Includes our proposed models with "cross" approximation strategy for a 1% accuracy threshold.

### Implementation Details

This work is an extension of previous studies ([5] is an extension of [4]) and offers Verilog implementations for approximate models of the aforementioned four different classification algorithms. Our "cross" approximation strategy involves a combination of coefficient approximation, netlist pruning, and voltage over-scaling. Inside each `cross_approx/` directory, you'll find the respective Verilog codes.

#### VOS-aware Gate-level Post-synthesis Simulations

For simulations that are aware of Voltage Over-Scaling (VOS) at the gate level after synthesis, the `define_scaling_lib_group` directive has been utilized.

### References

- [4] First referenced work details.
- [5] Extension work with additional implementations and improvements.

