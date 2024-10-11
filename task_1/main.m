% Author Name: Jude Guzlan
% Email: guzlan57@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Population Growth Analysis
% Date: October 11th, 2024


population = [5000 5200 5350 5600 5800]; %This is the population of each year 

%This calcualtes the growth rate for each year, taking the difference of
%the current population, and the previous population, then dividing it by
%the previous population. It gets multipled by 100 so then it turns it into
%a percent. 
growth_rate = diff(population) ./ population(1:end-1) * 100; 
growth_rate = [0, growth_rate];  %This is in place since there is no data for the first year, so then it starts at 0

pop_data = [population; growth_rate]; %This creates the the 2x5 matrix 

fprintf('Year   Population  Growth Rate (%%)\n'); %This prints out the three column names for the Year, Population, and the Growth Rate

for i = 1:length(population) %This loops it for each years population
    fprintf('%d\t%d\t\t%.2f\n', 2019+i, population(i), growth_rate(i)); %This formats the numbers to the correct decimal places. The \t allows it to have the space in the middle so the table is formatted correctly
end %Since the poplations are from the last 5 years, the 2019+i indicates that each year increases by 1, like 2020, 2021 etc... 

