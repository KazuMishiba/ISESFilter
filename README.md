# Intensity and Scale Adjustable Edge-Preserving Smoothing Filter (ISES Filter)

This repository contains the MATLAB implementation of the **Intensity and Scale Adjustable Edge-Preserving Smoothing Filter (ISES Filter)**, as described in the following publication:

**Reference**:  
K. Mishiba, "Intensity and Scale Adjustable Edge-Preserving Smoothing Filter," IEEE Access, vol. 12, pp. 89183-89190, 2024.  
DOI: [10.1109/ACCESS.2024.3421578](https://doi.org/10.1109/ACCESS.2024.3421578)

Please cite our paper when you use or modify this code.

## Files
- **`ISESFilter.m`**: MATLAB function that implements the ISES Filter.
- **`test.m`**: Test script that demonstrates the usage of the ISES Filter function using a built-in sample image.

## Usage

1. **Clone this repository:**
   ```bash
   git clone https://github.com/KazuMishiba/ISESFilter.git
   ```
2. **Navigate to the repository folder:**
   ```bash
   cd ISESFilter
   ```
3. **Run the test script** (`test.m`):
   ```matlab
   test
   ```
   This script will apply the ISESFilter to a sample image (`peppers.png`) and display the original and filtered images side by side.

## Function Description

### ISESFilter(x, s, p, e)
This function applies edge-preserving smoothing to an input image using intensity and scale adjustable parameters.

- **Inputs:**
  - `x`: Input image (grayscale or color).
  - `s`: Patch size (must be an odd number).
  - `p`: Parameter that adjusts the degree of edge sharpening.
  - `e`: Regularization parameter that adjusts the degree of contrast smoothing.

- **Outputs:**
  - `z`: Output image after applying the edge-preserving smoothing filter.

- **Reference:**
  K. Mishiba, "Intensity and Scale Adjustable Edge-Preserving Smoothing Filter," IEEE Access, vol. 12, pp. 89183-89190, 2024.

## License
This code is released under the MIT License. See `LICENSE` for details.
