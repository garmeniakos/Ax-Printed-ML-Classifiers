# Co-Design of Approximate Multilayer Perceptron for Ultra-Resource Constrained Printed Circuits

## Description

This repository hosts Verilog implementations for approximate MLP-C (Multilayer Perceptron for Classification) models. These models have been optimized through a printing-friendly retraining process and the application of approximate summation techniques. Our approach aims to tailor these models for ultra-resource-constrained environments, such as printed circuits, without significantly compromising accuracy.

### Directory Structure

- **/retrained_models**: Contains `.joblib` files for the retrained MLP-C models. These models have undergone a specialized retraining process to enhance their compatibility with approximate computing strategies.

- **/retrain&AxSum**: Features the Verilog codes for our proposed approximate MLP-C models. These models incorporate our "retrain & AxSum" methodology, tailored for different accuracy thresholds (i.e., 1%, 2%, 5%). This directory showcases the successful integration of retraining and approximate summation to achieve resource efficiency.



