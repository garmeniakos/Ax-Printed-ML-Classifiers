# Cross-layer approximatios for printed ML circuits
## Verilog Models
In each /[name_of_dataset] directory you can find the verilog code for the exact baseline models (in /exact_model directory) for all of the 4 different classification algorithms (MLP-C, MLP-R, SVM-C, SVM-R). In the /wr_approx_model directory you can find the verilog codes for our approximate models with our coefficient approximation.


## Exact baseline models
In the following table the floating-point accuracy of the 4 different classification algorithms trained on 4 different datasets are presented:

|            | MLP-R | MLP-C | SVM-C  | SVM-R  | 
|------------|----------|----------|------|------|
| RedWine    | 0.57     | 0.56     | 0.56 | 0.58 | 
| WhiteWine  | 0.53     | 0.54     | 0.53 | 0.53 |
| Cardio     | 0.84     | 0.89     | 0.90 | 0.84 | 
| Pendigits  | 0.39     | 0.94     |  0.98    |  0.23 | 


## Floating-point accuracy

We provide the script ``fp_calc_accuracy.py`` to calculate the floating-point accuracy of python (.joblib) models.

Please use following command:

```bash
python3 fp_calc_accuracy.py [name_of_dataset] [python_model_name]
``` 
An example can be: 

```bash
python3 fp_calc_accuracy.py Cardio ./cardio/python_models/Cardio.MLP_clf_nosearch.joblib
``` 
Output:
```bash
FP ACCURACY W/ MODEL: 0.8871473354231975
``` 

## Simulation accuracy of exact/approx models

To calculate the simulation accuracy of exact/approx models a simulation of corresponding testbench is required. After simulation a file ``sim_output.txt`` will be created in the same /testbench directory. To evaluate the accuracy please use following command:

```bash
python3 sim_calc_accuracy.py [name_of_model] [expected_outputs] [sim_outputs]
``` 
An example can be: 

```bash
python3 sim_calc_accuracy.py Cardio_MLP_C_exact ./cardio/expected_outputs.txt ./cardio/testbench/sim_outputs.txt
``` 
Output:
```bash
accuracy:  0.8808777429467085
``` 
## Description

**Exact_model**: Exact bespoke baseline models 

**Only_coef_approx**: Models with 'only coefficient approximation'

**Proposed_approx**: Our proposed approximate models with 'coefficient approximation & pruning' / 'only pruning' for different accuracy thresholds (i.e., 1%, 2%, 5%)

## Publication:
[1] G. Armeniakos, G. Zervakis, D. Soudris, M. B. Tahoori, and J. Henkel, “Cross-layer approximation for printed machine learning circuits,” 2022
[[ArXiv link]](https://arxiv.org/abs/2203.05915)

## Reference
New models & datasets are going to be added in our repository. All of the datasets were obtained from the UCI Machine Learning Repository:

[2] Dua, D. and Graff, C. (2019). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science.


