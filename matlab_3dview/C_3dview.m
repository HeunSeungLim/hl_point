clc; clear; close all;

path = '.\C_dataset\';


input = readmatrix(strcat(path, 'inout_cat.txt'));
output = readmatrix(strcat(path, 'post_set.txt'));
pre = readmatrix(strcat(path, 'pre_set.txt'));

figure; pcshow(pointCloud(input));
figure; pcshow(pointCloud(output));
figure; pcshow(pointCloud(pre));