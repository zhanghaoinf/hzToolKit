fprintf('Set Parameters');

% Selective Search Initialize
addpath('/home/hzhang57/toolkit/SelectiveSearchCodeIJCV/');
addpath('/home/hzhang57/toolkit/SelectiveSearchCodeIJCV/Dependencies');
%Parameters. Note that this controls the number of hierachical
% Segmentation which are combined
colorTypes = {'Hsv','Lab','RGI','H','Intensity'};
colorType  = colorTypes{1}; % Single Color Space for demo
% Here you specify which similarity functions to use in merging
simFunctionHandles = {@SSSimColourTextureSizeFillOrig, @SSSimTextureSizeFill,@SSSimBoxFillOrig,@SSSimSize};
simFunctionHandles = simFunctionHandles(1:2); % Two different merging strategies
% Parameters
%Thresholds for the Felzenszwalb and Huttenlocher segmentation algorithm.
% Note that by default, we set minSize = k, and sigma = 0.8
K = 200; % controls size of segments of initial segmentation
MINSIZE = K;
SIGMA   = 0.8;
