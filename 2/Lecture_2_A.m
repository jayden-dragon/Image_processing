%%
%
% written by JM Kim (blomqvist@korea.ac.kr)
% EIEN-394
% 2018-09-14

close all;
clear all;
clc;

IM = double(imread('cameraman.tif'));

%
figure; imagesc(IM); colormap jet; colorbar; axis image; 

%
% imwrite(IM_BW,'MyFirstProcessingImage_200800000.png')

% Image Sampling
IM_BW_size = size(IM);

% Image Qunatization
IM_BW_min_val = min(IM(:));
IM_BW_max_val = max(IM(:));

figure; imagesc(IM); colormap jet; colorbar; axis image; 
caxis([0 500]);

%
x = [1:253];
c1 = 45.*log(1+[1:253]);
c2 = c1./c1(end).*x(end);
figure; plot(x, c1,'LineWidth',5);

IM_processed = zeros(size(IM));
for F1 = 1:size(IM,1)
    for F2 = 1:size(IM,2)
        
        IM_processed(F1,F2) = 45.*(log(1+IM(F1,F2)));
       
    end
end

figure; imagesc(IM); colormap gray; colorbar; axis image; 
figure; imagesc(IM_processed); colormap gray; colorbar; axis image; 


%% Negative
IM_processed = zeros(size(IM));

for F1 = 1:size(IM,1)
    for F2 = 1:size(IM,2)
        
        IM_processed(F1,F2) = IM_BW_max_val - 1 - IM(F1,F2);
       
    end
end

figure; imagesc(IM_processed); colormap gray; colorbar; axis image; 

















