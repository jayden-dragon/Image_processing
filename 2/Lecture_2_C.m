% written by JMKim
% blomqvist@korea.ac.kr
% 2018-Fall-EIEN934

close all;
clear all;
clc;

set(0,'defaultAxesFontSize',30)

ori_img = (imread('cameraman.tif'));
ori_img = double(ori_img);

figure; imagesc(ori_img); colormap gray; axis image; colorbar; caxis([0 256]);

ft_img = (fft2(ori_img));

figure; imagesc(abs(ft_img)); colormap gray; axis image; colorbar; caxis([0 1*10^5]);

fts_img = fftshift(fft2(ori_img));

figure; imagesc(abs(fts_img)); colormap gray; axis image; colorbar; caxis([0 1*10^5]);

ifts_img = ifft2(fftshift(fts_img));

figure; imagesc(abs(ifts_img)); colormap gray; axis image; colorbar; caxis([0 256]);



%% Low pass filtering

circle_i = zeros(size(ori_img));

radius = 50;
center_x = 128;
center_y = 128;

for F1 = 1:size(circle_i,1)
    for F2 = 1:size(circle_i,2)
        if (F1-center_x)^2 + (F2-center_y)^2 > radius^2 %inside
            circle_i(F1,F2) = 1;
        else
            circle_i(F1,F2) = 0;
        end
    end
end

figure; imagesc(circle_i); colormap gray; axis image; colorbar; caxis([0 1]);

filt_img = fts_img .* circle_i;

figure; imagesc(abs(filt_img)); colormap gray; axis image; colorbar; caxis([0 1*10^5]);

ifts_img = ifft2(fftshift(filt_img));

figure; imagesc(abs(ifts_img)); colormap gray; axis image; colorbar; caxis([0 250]);


%% High pass filtering

