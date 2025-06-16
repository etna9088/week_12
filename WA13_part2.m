%Week 13 Assignment
%done by Madina Kanafina
%November 19, 2024

clear; clc
size = 8;  %size of the gameboard (8x8)
boats = 10;  %number of boats
counter = 0; 
GB = zeros(size);    %8x8 matrix with zeros
while counter < boats
   row = randi(size);   %pick a random row
   col = randi(size);   %pick a random column
   if GB(row, col) == 0 %meaning that the spot is empty
      GB(row, col) = 1; %place the boat
      counter = counter + 1;  
   end
end

GB
disp('Game ON!')

shotcount = 0;    %Start with no shots
while sum(sum(GB)) < 2 * boats    %While the sum(sum(GB)) is less than twice the number of boats
   row = randi(size);    %Pick a random row
   col = randi(size);    %Pick a random column
   shotcount = shotcount + 1;   %Make a shot and add it to the shot count
   if GB(row, col) == 1    %If the shot hits a boat at GB(row, col)
      GB(row, col) = 2;    %Turn the boat into debris (change the spot's value from 1 to 2)
      fprintf('Hit! Boat sunk at (%d, %d)\n', row, col);
      disp(GB);
   else
      fprintf('Miss! Shot at (%d, %d)\n', row, col); 
   end   
end  

disp('Game OVER!');   % Output 'Game OVER!'
disp('Final Game Board:');   % Output GB
disp(GB);   
fprintf('Total shots made: %d\n', shotcount);   % Output the number of shots made