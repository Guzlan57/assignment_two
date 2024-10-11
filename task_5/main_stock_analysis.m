% Author Name: Jude Guzlan
% Email: guzlan57@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Stock Market Analysis 
% Date: October 11th, 2024


stock_prices = read_stock_data('stock_data.txt'); %This reads the stock data from the .txt file 


[average_price, highest_price, lowest_price, price_increase_days] = calculate_stock_stats(stock_prices); %This calculates the statistics

fprintf('Average Closing Price: %.2f\n', average_price); %Displays the average closing price of the stock prices 
fprintf('Highest Closing Price: %.2f\n', highest_price); %Displays the highest closing price of the stock prices 
fprintf('Lowest Closing Price: %.2f\n', lowest_price); %Displays the lowest closing price for the stock prices 
fprintf('Number of days the stock price increased: %d\n', price_increase_days); %Displays how many days the stock prices increased 


plot_stock_data(stock_prices, average_price, highest_price, lowest_price); %This plots all the data that was collected from the stock prices 

write_summary('stock_summary.txt', average_price, highest_price, lowest_price, price_increase_days); %This writes the summary and saves it into a .txt file 