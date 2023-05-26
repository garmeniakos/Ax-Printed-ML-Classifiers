# Approximate Printed Machine Learning Classifiers

<p align="center">
  <a href="#Overview">Overview</a> •
  <a href="#Cross-layer approximatios for printed ML circuits">Cross-layer approx</a> •
  <a href="#Exact-baseline-models">Python Models</a> •
  <a href="#Floating-point-accuracy"> Accuracy Calculation </a> •
  <a href="#Publication">References</a> 
</p>

## Overview
Printed electronics denotes a set of printing methods which
can realize ultra low-cost, large area and flexible computing systems in combination with functional materials to realize transistors and passive components on various substrates.

![teaser](assets/figures/printed_apps.png)

But the large feature sizes (orders of magnitude lower than silicon VLSI) and the large intrinsic transistor gate capacitances, make **Machine Learning** deployment difficult.

<p align="center">
  <img src="assets/figures/table_printed.png" alt="teaser">
</p>


## Cross-layer approximatios for printed ML circuits



## Description
In each /[name_of_dataset] directory you can find the verilog codes for the exact and approximate models for all of the 4 different classification algorithms (MLP-C, MLP-R, SVM-C, SVM-R) with the corresponding testbenches.

**Exact_model**: Exact bespoke baseline models 

**Only_coef_approx**: Models with 'only coefficient approximation'

**Proposed_approx**: Our proposed approximate models with 'coefficient approximation & pruning' / 'only pruning' for different accuracy thresholds (i.e., 1%, 2%, 5%)



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

## Publication:
[1] G. Armeniakos, G. Zervakis, D. Soudris, M. B. Tahoori, and J. Henkel. 2022. "Cross-layer approximation for printed machine learning circuits". In Proceedings of the 2022 Conference & Exhibition on Design, Automation & Test in Europe (DATE '22)
[[ArXiv link]](https://arxiv.org/abs/2203.05915)

## Reference
New models & datasets are going to be added in our repository. All of the datasets were obtained from the UCI Machine Learning Repository:

[2] Dua, D. and Graff, C. (2019). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science.


# Co-Design of Approximate Multilayer Perceptron for Ultra-Resource Constrained Printed Circuits

**Our implementations will become soon availiable**

![Preview](https://github.com/tmKamal/hosted-images/blob/master/under-construction/Document.gif?raw=true)<br/>  
