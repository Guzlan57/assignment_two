% Author Name: Jude Guzlan
% Email: guzlan57@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple Encryption Function
% Date: October 11th, 2024


message = input('Enter the message you want encryted (ONLY LOWERCASE): ', 's'); %Asks the user to input a message that they want to encrypt
shift = input('Enter a shift value between 1 and 25: '); %Asks the user to input a shift value from 1-25

encrypted_message = caeser_cipher(message, shift);  %Uses the function caeser_cipher to take the inputed message, and apply the shift 

fprintf('Orignal Message: %s \n', message); %Prints the original message that was inputed
fprintf('Encrypted Message: %s \n', encrypted_message); %Prints the encrypted message 







