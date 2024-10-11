

function [average_price, highest_price, lowest_price, price_increase_days] = calculate_stock_stats(stock_prices) %This calculates the average, highest, and lowest price and how many days the stock prices increased 
    average_price = mean(stock_prices);     % Calculate average price
    highest_price = max(stock_prices);      % Calculate highest price
    lowest_price = min(stock_prices);       % Calculate lowest price
    price_increase_days = sum(diff(stock_prices) > 0); % Counts how many days the price of the stock increases 
end