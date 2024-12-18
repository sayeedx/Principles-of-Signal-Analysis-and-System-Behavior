clc
clear 

%Code for D.1

load('ELE532_Lab1_Data.mat');

%Part A
partA = A(:);
disp('Part A of D.1');
disp(partA);

%Part B
partB = A([2 4 7]);
disp('Part B of D.1');
disp(partB);

%Part C 
partC = A>=0.2;
disp('Part C of D.1');
disp(partB);

%Part D
partD = A(A>=0.2);
disp('Part D of D.1');
disp(partD);

%Part E
A(A>=0.2) = 0;
disp('Part E of D.1');
disp(A);