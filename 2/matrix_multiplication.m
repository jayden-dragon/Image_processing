% written by JMKim
% blomqvist@korea.ac.kr
% 2018-Fall-EIEN934

close all;
clear all;
clc;

set(0,'defaultAxesFontSize',30);

a = zeros(2,4); % matrix with 2 rows and 4 columns
b = zeros(4,3); % matrix with 4 rows and 3 columns
c = a*b;
size(c);

d = [[1,2];[3,4]];
e = [[5,6];[7,8]];

f = d*e;
g = d.*e;

