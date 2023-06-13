# Piece Wise Linear aprroximation of sigmoid function
Sigmoid function is most commonly used activation function in Neural Networks. 

# Results
The output for different inputs in Vivado are shown below.

<p align="center">
  <img src="https://github.com/avdssrk/Sigmoid_Appr_on_FPGA/blob/main/images/verilog_results.png" width="1300" title="Sigmoid results">
</p>

Results of approximation in MATLAB is shown below.

<p align="center">
  <img src="https://github.com/avdssrk/Sigmoid_Appr_on_FPGA/blob/main/images/matlab_results.png" width="1300" title="Sigmoid results">
</p>


# Comparision of the plots
The approximated function is plotted along with the original function.

<p align="center">
  <img src="https://github.com/avdssrk/Sigmoid_Appr_on_FPGA/blob/main/images/Sigmoid_matlab.png" width="800" title="Sigmoid approximation">
</p>

The differentation of the Sigmoid approximation is plotted.

<p align="center">
  <img src="https://github.com/avdssrk/Sigmoid_Appr_on_FPGA/blob/main/images/Sig_diff.png" width="800" title="Sigmoid diff approximation">
</p>


# Utilization Report
The usage of different blocks on Virtex-6 is listed below.

  | Slice Logic                   | Used |
  |-------------------------------|------|
  | Number of Slice LUTs          | 30   |
  | Number of occupied Slices     | 10   |
  | Number of LUT Flip Flop pairs | 30   |
  | Number of bonded IOBs         | 32   |
  
