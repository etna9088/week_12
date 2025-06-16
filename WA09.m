%Week 9 Assignment
%Done by Madina Kanafina

clear; clc

A = zeros(1,1500)
for n = 1:1500     %generate two random integers between 1 and 6
    A1 = randi(6);
    A2 = randi(6);
    A(n) = A1 + A2;
end
A(n)



%Plot the histogram
histogram(A, 'Normalization', 'probability'); 
title('Monopoly Game Dice by Madina Kanafina');
xlabel('roll value');
ylabel('rolls with this value');