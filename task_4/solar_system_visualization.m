% Author Name: Jude Guzlan
% Email: guzlan57@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar System Visualization 
% Date: October 11th, 2024

planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.20, 30.05];  %The distances of each planet in AU
planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88]; %The planet size relative to earth (1) - found by taking diameter of each planet, and dividing it by the earths diameter 

planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'}; %lists the names of each planet 

subplot(1, 2, 1); %This is used to create the grid for the subplot, and explains how big you want it 
scatter(planet_distances, planet_sizes, planet_sizes * 100, 'filled'); %Creates the scatter plot that has the planet distances, and sizes 
title('Planet Distances vs. Sizes'); %Gives the scatter plot a title 
xlabel('Distance from the Sun'); %Gives the X-Axis of the scatter plot a titlte
ylabel('Relative Size to Earth'); %Gives the y-axis of the scatter plot a title 
grid on;  %Makes sure the grid on the scatter plot is on . 

 
legend(planet_names, 'Location', 'Northwest'); %Places a legend on the scatter plot, with the location of the legend in the north west 

subplot(1, 2, 2); %This is used to create the grid for the subplot, and explains how big you want it 
bar(planet_distances); %Creates the bar graph for the planet distances 
title('Planet Distances From the Sun'); %Gives the bar graph a title of planet distances from the sun 
xlabel('Planet Name'); %Gives the x-axis a name of Planet name 
ylabel('Distances in AU'); %Gives the y-axis a name of Distances in AU
xticklabels(planet_names); %This changes the name of each tick mark on the x-axis, instead of 1,2,3 it changes it to the planet names 
grid on;  %This makes sure the grid stays on for the bar chart 


saveas(gcf, 'solar_system_visualization.png'); %This saves both the scatter plot and the bar chart into a png file 