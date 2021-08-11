% written by JMKim
% blomqvist@korea.ac.kr
% 2018-Fall-EIEN934

%%
close all;
clear all;
clc;

set(0,'defaultAxesFontSize',30)

ori_img1 = (imread('cameraman.tif'));

figure; imagesc(((ori_img1))); colormap gray; colorbar; axis image; 
figure; imagesc(((ori_img1))); colormap jet; colorbar; axis image; 
figure; imagesc(((ori_img1))); colormap parula; colorbar; axis image; 
figure; imagesc(((ori_img1))); colormap pink; colorbar; axis image; 


figure; imagesc(((ori_img1))); colormap gray; colorbar; axis image; caxis([50 100]);
figure; imagesc(((ori_img1))); colormap gray; colorbar; axis image; caxis([0 200]);
