
%Week 13 Assignmnent 
%November 19, 2024

clear; clc

birth = 0.0048;     %monthly interest rate
death = 0;
deltat = 1;         %one time step in months
P(1) = 3360;        %initial deposit
t = 1;
 while P(t) > 0     %continue until negative balance
    P(t+1) = P(t) + P(t) * birth;   %add interest
    if mod (t,2) == 0
        P(t+1) = P(t+1) - 560;      %deduct $560 even-numbered months
    end
    if mod (t, 12) == 0 
        P(t+1) = P(t+1) + 2100;     %add $2100 every December
    end
    t = t + 1;
 end
t

disp('The account balance becomes zero or negative in month:  ');
disp(t)

plot(1:length(P),P);
title("How long does the money last by Madina Kanafina",...
    "FontSize",12,...
    "FontWeight","bold");
xlabel("Month in Study");
ylabel("Bank Account Balance");
text(2,1500,{"birthrate = 0.480000%",...
    "initial size = 3360",...
    "even-month withdrawal = 560",...
    "yearly bonus = 2100"},...
    'FontSize', 9)