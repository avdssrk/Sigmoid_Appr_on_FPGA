# Piece Wise Linear aprroximation of sigmoid function
Sigmoid function is most commonly used activation function in Neural Networks. The expression for the sigmoid function is:
```math
y(x) = \frac{1}{1 + e^{-x}}
```
Implementing this type of function on FPGA or any digital system needs very huge resources as the equation varies from $` +\infty`$ to $` -\infty`$. Also the value need more precision we need more bits to store the value. So, at the cost of accuracy we try to approximate the equation, so that it can we easily implemented on FPGA.

# Approximation of sigmoid function
The approximated expression of the sigmoid function is given below:
```math
y(x) = \left\{\begin{matrix}
0 & x \leq -5 \\
0.15625 + x*0.03125 & -5 < x \leq -2.375 \\ 
0.375 + x*0.125 & -2.375< x \leq -1 \\ 
0.5 + x*0.25 & -1 < x \leq 1\\ 
0.625 + x*0.125 & 1< x\leq 2.375 \\ 
0.84375 + x*0.03125 & 2.375 < x \leq 5 \\ 
1 & x>5 \\ 
\end{matrix}\right. 
```
# Results
The output for different inputs in Vivado are shown below.

<p align="center">
  <img src="https://github.com/avdssrk/Sigmoid_Appr_on_FPGA/blob/main/images/verilog_results.png" width="1300" title="Sigmoid results">
</p>

Results of approximation in MATLAB is shown below.

<p align="center">
  <img src="https://github.com/avdssrk/Sigmoid_Appr_on_FPGA/blob/main/images/matlab_results.png" width="1300" title="Sigmoid results">
</p>

The original sigmoid values without any approximation is shown below.

<p align="center">
  <img src="https://github.com/avdssrk/Sigmoid_Appr_on_FPGA/blob/main/images/org_sigm.png" width="3000" title="Sigmoid results">
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
  
