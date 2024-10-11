function plot_stock_data(stock_prices, average_price, highest_price, lowest_price) %plots the stock price data 
    
    figure;
    plot(stock_prices, '-o', 'DisplayName', 'Daily Closing Prices'); % Plot stock prices
    hold on;

  
    yline(average_price, '--r', 'Average Price', 'DisplayName', 'Average Price');
    yline(highest_price, '--g', 'Highest Price', 'DisplayName', 'Highest Price');
    yline(lowest_price, '--b', 'Lowest Price', 'DisplayName', 'Lowest Price');

    % Adds labels, a title, and a legend
    xlabel('Day');
    ylabel('Price ($)');
    title('Stock Market Analysis: Daily Closing Prices');
    legend('show');
    grid on;

    % Saves the plot as an image file
    saveas(gcf, 'stock_analysis.png');
end