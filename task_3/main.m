% Author Name: Jude Guzlan
% Email: guzlan57@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Weather Data Analysis
% Date: October 11th, 2024

data = readtable('weather_data.txt', 'Delimiter', ',');
temperature = data(2:end, 2).Temperature;
humidity = data(2:end, 3).Humidity;
precipitation = data(2:end, 4).Precipitation; 

avg_temperature = mean(temperature);
avg_humidity = mean(humidity);
total_precipitation = sum(precipitation);

data = [avg_temperature avg_humidity total_precipitation]

save_to_file('summary.txt', data)