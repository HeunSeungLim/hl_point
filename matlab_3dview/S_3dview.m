clc; clear; close all;

%path = 'U:\git\PF-Net-Point-Fractal-Network-master\PF-Net-Point-Fractal-Network-master\test_one\';
path = 'S_dataset\';


input = readmatrix(strcat(path, 'crop_ours.csv'));
output = readmatrix(strcat(path, 'fake_ours.csv'));

merge_in_out = zeros(2048, 3);

merge_in_out(1:1535, :) = input(1:1535, :);
merge_in_out(1536:end-1, :) = output(1:end,  :);

point_in_out = pointCloud(merge_in_out);
% point_out = pointCloud(output);



pcshow(point_in_out);