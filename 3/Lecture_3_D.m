% written by JMKim
% blomqvist@korea.ac.kr
% 2018-Fall-EIEN934

%%
close all;
clear all;
clc;

set(0,'defaultAxesFontSize',30)

I = double(imread('cameraman.tif'))./256;

figure; imagesc(I)

J = imnoise(I,'gaussian');
figure; imagesc(J)

J = imnoise(I,'gaussian',0);
figure; imagesc(J)

J = imnoise(I,'gaussian',0,0.01);
figure; imagesc(J)

J = imnoise(I,'poisson');
figure; imagesc(J)

J = imnoise(I,'salt & pepper');
figure; imagesc(J)

J = imnoise(I,'speckle');
figure; imagesc(J)

