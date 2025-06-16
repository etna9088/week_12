%Week 11 Assignment
%done by Madina Kanafina

clear; clc

mycolormap = [ 0, 1, 1; % cyan
   0, 1, 0; % green
   1, 1, 0; % yellow
   0, 0, 1]; % blue

% Array A 
A = [ 0, 1, 2, 3, 1;
   3, 2, 1, 0, 2;
   1, 3, 0, 2, 3;
   2, 1, 3, 1, 0;
   0, 2, 1, 3, 2] ;

colormap(mycolormap)
imagesc(A)
axis square


clear; clc

mycolormap = [
    0.93, 0.93, 0.94; %Background white
    0.80, 0.00, 0.00; %Cap red
    0.68, 0.56, 0.40; %Skin
    0.39, 0.31, 0.00; %Hair brown
    0.20, 0.33, 0.48; %Jean blue
    0.22, 0.21, 0.20; %Beard and shoe gray
    0.95, 0.85, 0.46]; %Button yellow

Mario = [
    0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 1 1 1 1 1 0 0 0 0 0;
    0 0 0 1 1 1 1 1 1 1 1 1 0 0;
    0 0 0 3 3 3 2 2 4 2 0 0 0 0;
    0 0 3 2 3 2 2 2 4 2 2 2 0 0;
    0 0 3 2 3 3 2 2 2 4 2 2 2 0;
    0 0 3 3 2 2 2 2 4 4 4 4 0 0;
    0 0 0 0 2 2 2 2 2 2 0 0 0 0;
    0 0 0 1 1 5 1 1 5 1 1 0 0 0;
    0 0 1 1 1 5 1 1 5 1 1 1 0 0;
    0 1 1 1 1 5 5 5 5 1 1 1 1 0;
    0 2 2 1 5 6 5 5 6 5 1 2 2 0;
    0 2 2 2 5 5 5 5 5 5 2 2 2 0;
    0 2 2 5 5 5 5 5 5 5 5 2 2 0;
    0 0 0 5 5 5 0 0 5 5 5 0 0 0;
    0 0 4 4 4 0 0 0 0 4 4 4 0 0;
    0 4 4 4 4 0 0 0 0 4 4 4 4 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0];

colormap(mycolormap)
imagesc(Mario)
axis normal