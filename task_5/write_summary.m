
function write_summary(filename, average_price, highest_price, lowest_price, price_increase_days) %This function writes the summary of the stock prices 
    fileID = fopen(filename, 'w'); % Opens the file for writing
    fprintf(fileID, 'Stock Market Analysis Summary\n'); %Displays the title 
    fprintf(fileID, '------------------------------\n'); %Displays a line break so then the table is organized 
    fprintf(fileID, 'Average Closing Price: %.2f\n', average_price); %Displays the average closing price 
    fprintf(fileID, 'Highest Closing Price: %.2f\n', highest_price); %Displays the highest closing price 
    fprintf(fileID, 'Lowest Closing Price: %.2f\n', lowest_price); %Displys the lowest closing price 
    fprintf(fileID, 'Number of days the stock price increased: %d\n', price_increase_days); %Displays the number of days the stock price increases 
    fclose(fileID); % Close the file
end