%%
%
% written by JM Kim (blomqvist@korea.ac.kr)
% EIEN-394
% 2018-09-12

close all;
clear all;
clc;

IM = imread('lena.jpg');

%
figure; imagesc(IM);


% 
IM_BW = rgb2gray(IM);

% 
figure; imagesc(IM_BW); colormap gray; colorbar; axis image; 

imwrite(IM_BW,'MyFirstProcessingImage_200800000.png')

% Image Qunatization
IM_BW_size = size(IM_BW);

% Image Sampling
IM_BW_min_val = min(IM_BW(:));
IM_BW_max_val = max(IM_BW(:));
