# Approximate Printed Machine Learning Classifiers

<p align="center">
  <a href="#overview">Overview</a> •
  <a href="#exact-baseline-models">Approximate techniques</a> •
  <a href="#evaluate-fp32-models">Accuracy evaluation</a> •
  <a href="#measured-results"> Measured Results </a> •
  <a href="#references">References</a> 
</p>

## Overview
Printed electronics denotes a set of printing methods which
can realize ultra low-cost, large area and flexible computing systems in combination with functional materials to realize transistors and passive components on various substrates.

![teaser](assets/figures/printed_apps.png)

But the large feature sizes (orders of magnitude lower than silicon VLSI) and the tight power budget (printed batteries support <30 mW), make **Machine Learning** deployment difficult.

<p align="center">
  <img src="assets/figures/table_printed.png" alt="teaser">
</p>



## Exact baseline models
In the following table the floating-point accuracy of the 4 different classification algorithms trained on 4 different datasets are presented:

|            | MLP-R | MLP-C | SVM-C  | SVM-R  | 
|------------|----------|----------|------|------|
| RedWine    | 0.57     | 0.56     | 0.56 | 0.58 | 
| WhiteWine  | 0.53     | 0.54     | 0.53 | 0.53 |
| Cardio     | 0.84     | 0.89     | 0.90 | 0.84 | 
| Pendigits  | 0.39     | 0.94     |  0.98    |  0.23 | 


## Cross-layer approximatios for printed ML circuits [4]


### Description
In each /[name_of_dataset] directory you can find the verilog codes for the exact and approximate models for all of the 4 different classification algorithms (MLP-C, MLP-R, SVM-C, SVM-R) with the corresponding testbenches.

**Exact_model**: Exact bespoke baseline models 

**Only_coef_approx**: Models with 'only coefficient approximation'

**Proposed_approx**: Our proposed approximate models with 'coefficient approximation & pruning' / 'only pruning' for different accuracy thresholds (i.e., 1%, 2%, 5%)



## Co-Design of Approximate Multilayer Perceptron for Ultra-Resource Constrained Printed Circuits [5]

### Description
This work includes verilog implementations for approximate MLP-C models after applying  printing-friendly retraining and approximate summation. In each /[name_of_dataset] directory you can find the respective verilog codes.

**retrain&AxSum**: Our proposed approximate MLP-C models with 'retrain & AxSum' for different accuracy threshold (i.e., 1%, 2%, 5%)



## Model-to-Circuit Cross-Approximation For Printed Machine Learning Classifiers [6]

### Description
This work is an extension of [2] and includes verilog implementations for approximate models of the 4 different classification algorithms (MLP-C, MLP-R, SVM-C, SVM-R). Our `cross` approximation involves coefficient approximation, netlist pruning, and voltage over-scaling. In each /[name_of_dataset] directory you can find the respective verilog codes.

**cross_approx**: Our proposed models with 'cross' approximation for 1% accuracy threshold.

Note that for the VOS-aware gate-level post-synthesis simulations the `define_scaling_lib_group` has been used and our tool-flow (scripts & printed PDKs) are available from the corresponding author upon request.




## Evaluate FP32 models

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

## Evaluate (HDL) exact/approx models

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


## Measured Results

- All the models are synthesized using Synopsys Design Compiler and open-source EGT PDK. 
- Circuit simulations and power analysis are performed using Questasim and PrimeTime, respectively.
- All the **area** and **power** results are for MLP-C classification algorithm and for 1% accuracy threshold w.r.t. our baseline models [1].
- More results, models and scripts are available from the corresponding author upon request.

The **area** results:


| Dataset             |Baseline [1]| SC [3] | Cross_approx [5] | Retrain&AxSum [6]  |              
|---------------------|-------------|-------|--------|------|
| Cardio              | 33.4 cm²        | 4.9 cm²  | 17 cm²    | 6.1 cm² |
| RedWine             | 17.6 cm²       | -     | 8 cm²     | 1.1 cm² |     
| WhiteWine           | 31.2 cm²       | -     | 13.6 cm²  | 6.5 cm² |     
| Seeds               | 9.9 cm²        | 2.1 cm²  | 9.2 cm²   | 2.2 cm² |  
| Vertebral Column 3C | 8.8 cm²        | 1.9 cm²  | 5.9 cm²   | 1.8 cm² |  
| Balance Scale       | 9.3 cm²        | 1.5 cm²  | 6.9 cm²   | 0.5 cm² |  

The **power** results:

| Dataset             | Baseline [1] | SC [3] | Cross_approx [5] | Retrain&AxSum [6] |
|---------------------|--------------|--------|------------------|--------------------|
| Cardio              | 124.2 mW    | 22.9 mW | 48.9 mW          | 20.8 mW           |
| RedWine             | 73.5 mW     | -    | 18.8 mW          | 3.9 mW            |
| WhiteWine           | 126.4 mW    | -    | 43.2 mW          | 21.3 mW           |
| Seeds               | 45 mW        | 9.8 mW  | 27.9 mW          | 8.4 mW            |
| Vertebral Column 3C | 41.9 mW      | 8.9 mW  | 31.6 mW          | 7 mW              |
| Balance Scale       | 39.6 mW      | 7.1 mW  | 17.8 mW          | 2.1 mW            |


## References:
[1] M. H. Mubarik et al., "Printed Machine Learning Classifiers," 2020 53rd Annual IEEE/ACM International Symposium on Microarchitecture (MICRO), Athens, Greece, 2020, pp. 73-87, doi: 10.1109/MICRO50266.2020.00019.

All of the datasets were obtained from the UCI Machine Learning Repository:

[2] Dua, D. and Graff, C. (2019). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science.

[3] D. D. Weller et al., "Printed Stochastic Computing Neural Networks," 2021 Design, Automation & Test in Europe Conference & Exhibition (DATE), Grenoble, France, 2021, pp. 914-919, doi: 10.23919/DATE51398.2021.9474254.

[4] G. Armeniakos, G. Zervakis, D. Soudris, M. B. Tahoori and J. Henkel, "Cross-Layer Approximation For Printed Machine Learning Circuits," 2022 Design, Automation & Test in Europe Conference & Exhibition (DATE), Antwerp, Belgium, 2022, pp. 190-195, doi: 10.23919/DATE54114.2022.9774689.
[[ArXiv link]](https://arxiv.org/abs/2203.05915)

[5] G. Armeniakos, G. Zervakis, D. Soudris, M. B. Tahoori and J. Henkel, "Model-to-Circuit Cross-Approximation For Printed Machine Learning Classifiers," in IEEE Transactions on Computer-Aided Design of Integrated Circuits and Systems, doi: 10.1109/TCAD.2023.3258668.
[[ArXiv link]](https://arxiv.org/abs/2303.08255)

[6] G. Armeniakos, G. Zervakis, D. Soudris, M. B. Tahoori and J. Henkel, "Co-Design of Approximate Multilayer Perceptron for Ultra-Resource Constrained Printed Circuits," in IEEE Transactions on Computers, doi: 10.1109/TC.2023.3251863.
[[ArXiv link]](https://arxiv.org/abs/2302.14576)


### Citation:

If you find our project helpful, please consider citing our paper:

```
@INPROCEEDINGS{
  arm2022crosslayer,
  author={Armeniakos, Giorgos and Zervakis, Georgios and Soudris, Dimitrios and Tahoori, Mehdi B. and Henkel, Jörg},
  booktitle={2022 Design, Automation & Test in Europe Conference & Exhibition (DATE)}, 
  title={Cross-Layer Approximation For Printed Machine Learning Circuits}, 
  year={2022}
}

@ARTICLE{
  arm2023crossapprox,
  author={Armeniakos, Giorgos and Zervakis, Georgios and Soudris, Dimitrios and Tahoori, Mehdi B. and Henkel, Jörg},
  journal={IEEE Transactions on Computer-Aided Design of Integrated Circuits and Systems}, 
  title={Model-to-Circuit Cross-Approximation For Printed Machine Learning Classifiers}, 
  year={2023}
  }


@ARTICLE{
  arm2023codesign,
  author={Armeniakos, Giorgos and Zervakis, Georgios and Soudris, Dimitrios and Tahoori, Mehdi B. and Henkel, Jörg},
  journal={IEEE Transactions on Computers}, 
  title={Co-Design of Approximate Multilayer Perceptron for Ultra-Resource Constrained Printed Circuits}, 
  year={2023},
  pages={1-8}
  }

```

