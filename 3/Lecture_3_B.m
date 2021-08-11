% written by JMKim
% blomqvist@korea.ac.kr
% 2018-Fall-EIEN934

%%
close all;
clear all;
clc;

set(0,'defaultAxesFontSize',30)

ori_img1 = (imread('cameraman.tif'));
ori_img2 = (imread('RGBcube.tif'));

figure; imagesc(uint8(double(ori_img1))); colormap gray; colorbar; axis image; 
figure; imagesc(((ori_img1))); colormap gray; colorbar; axis image; 

figure; imagesc(uint8(double(ori_img2))); colormap gray; colorbar; axis image; 
figure; imagesc(ori_img2); colormap gray; colorbar; axis image; 

ori_img1_size = size(ori_img1);
ori_img2_size = size(ori_img2);
