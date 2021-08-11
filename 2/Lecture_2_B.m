%%
%
% written by JM Kim (blomqvist@korea.ac.kr)
% EIEN-394
% 2018-09-14


close all;
clear all;
clc;

set(0,'defaultAxesFontSize',30)

% what is image size?
ori_img = double(imread('cameraman.tif'));

figure; imagesc(ori_img);  colormap gray; axis image; colorbar; caxis([0 256]);

%kernel definition
% temp = [[1,1,1];[1,1,1];[1,1,1]];
%temp = [[1,2,1];[2,4,2];[1,2,1]];
temp = [[0,1,0];[1,-4,-1];[0,1,0]];

%kernel = (1/sum(temp(:))).*temp;
kernel = temp;
filt_img = conv2(ori_img, kernel);

figure; imagesc(filt_img);  colormap gray; axis image; colorbar; caxis([0 256]);

