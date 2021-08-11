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
figure; imagesc(IM_BW);
