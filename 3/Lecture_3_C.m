% written by JMKim
% blomqvist@korea.ac.kr
% 2018-Fall-EIEN934

%%
close all;
clear all;
clc;

set(0,'defaultAxesFontSize',30)

ori_img2 = double(imread('RGBcube.tif'));

IM_processed = ori_img2;

IM_processed_Blue = IM_processed(:,:,3);

IM_BW_max_val = max(IM_processed_Blue(:));

for F1 = 1:size(ori_img2,1)
    for F2 = 1:size(ori_img2,2)
        
        IM_processed(F1,F2,3) = IM_BW_max_val - 1- ori_img2(F1,F2,3);
       
    end
end

IM_processed_unit8 = uint8(IM_processed);

figure; imagesc(uint8(ori_img2));
figure; imagesc(IM_processed_unit8)
figure; imagesc(IM_processed)

figure; imagesc(uint8(ori_img2) - IM_processed_unit8);
