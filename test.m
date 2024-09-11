% Test script for the Intensity and Scale Adjustable Edge-Preserving Smoothing Filter (ISESFilter)
% This script demonstrates the functionality of the ISESFilter function.
% 
% Reference:
% K. Mishiba, "Intensity and Scale Adjustable Edge-Preserving Smoothing Filter," 
% IEEE Access, vol. 12, pp. 89183-89190, 2024, doi: 10.1109/ACCESS.2024.3421578.

clear;
close all;

% Define filter parameters
s = 5;       % Patch size (must be an odd number)
p = 5;       % Parameter to adjust edge sharpening
e = 1e-5;    % Regularization parameter to control contrast smoothing

% Load a sample image and convert to double precision
x = im2double(imread('peppers.png'));

% Apply the ISESFilter
z = ISESFilter(x, s, p, e);

% Display the original and filtered images side by side
figure;
imshow([x, z]);
title('Original Image (Left) and Filtered Image (Right)');
