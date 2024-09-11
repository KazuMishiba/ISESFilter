function z = ISESFilter(x, s, p, e)
% ISESFILTER Intensity and Scale Adjustable Edge-Preserving Smoothing Filter
% This function implements the filter described in:
% K. Mishiba, "Intensity and Scale Adjustable Edge-Preserving Smoothing Filter,"
% IEEE Access, vol. 12, pp. 89183-89190, 2024, doi: 10.1109/ACCESS.2024.3421578.
%
% Inputs:
% x : Input image (grayscale or color)
% s : Patch size (must be an odd number)
% p : Parameter that adjusts the degree of edge sharpening
% e : Parameter that adjusts the degree of contrast smoothing
%
% Outputs:
% z : Output image after applying ISES Filter
%

% Check if the patch size 's' is odd
if mod(s, 2) == 0
    error('Patch size ''s'' must be an odd number.');
end

% Define a uniform box filter with patch size 's' and symmetric padding
UBF = @(x) imboxfilt(x, s, 'NormalizationFactor', 1, 'Padding', 'symmetric');

% Compute the mean (mu) of the image within each patch
mu = UBF(x) / s^2;

% Calculate the variance of the image within each patch
variance = mean(UBF(x.^2) / s^2 - mu.^2, 3);

% Compute the weights using the variance
% 'min' function is used to prevent excessively large weights
w = min(1 ./ (variance + e).^p, 10^15);

% Sum of the weights within each patch
w_sum = UBF(w);

% Compute the final filtered output by applying the weights
z = UBF(w .* mu) ./ w_sum;

end
