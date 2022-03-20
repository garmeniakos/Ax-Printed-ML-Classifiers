import sys

def params(model):

    if "_C" in model:
        predo=True
        SIM_REGRESSOR=False
    else:
        predo=False
        SIM_REGRESSOR=True

    if "Cardio" in model:
        SIM_YLST=[1,2,3]
    elif "RedWine" in model:
        SIM_YLST=[3,4,5,6,7,8]
    elif "WhiteWine" in model:
        SIM_YLST=[3,4,5,6,7,8,9]




    if "Cardio_MLP_C" in model:
        inputs=21
        output_b=2
        SIM_FRACTION_BITS=16
    elif "Cardio_MLP_R" in model:
        inputs=21
        output_b=22
        SIM_FRACTION_BITS=16
    elif "Cardio_SVM_C" in model:
        inputs=21
        output_b=2
        SIM_FRACTION_BITS=8
    elif "Cardio_SVM_R" in model:
        inputs=21
        output_b=14
        SIM_FRACTION_BITS=10
    elif "RedWine_MLP_C" in model:
        inputs=11
        output_b=3
        SIM_FRACTION_BITS=12
    elif "RedWine_MLP_R" in model:
        inputs=11
        output_b=20
        SIM_FRACTION_BITS=12
    elif "RedWine_SVM_C" in model:
        inputs=11
        output_b=3
        SIM_FRACTION_BITS=7
    elif "RedWine_SVM_R" in model:
        inputs=11
        output_b=14
        SIM_FRACTION_BITS=9
    elif "WhiteWine_MLP_C" in model:
        inputs=11
        output_b=3
        SIM_FRACTION_BITS=12
    elif "WhiteWine_MLP_R" in model:
        inputs=11
        output_b=21
        SIM_FRACTION_BITS=14
    elif "WhiteWine_SVM_C" in model:
        inputs=11
        output_b=3
        SIM_FRACTION_BITS=7
    elif "WhiteWine_SVM_R" in model:
        inputs=11
        output_b=13
        SIM_FRACTION_BITS=8
    else:
        print("Error in model, exiting...")
        sys.exit()
    return inputs, output_b, predo, SIM_REGRESSOR, SIM_FRACTION_BITS, SIM_YLST
