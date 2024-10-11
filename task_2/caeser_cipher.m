function encrypted_message = caeser_cipher(message, shift)  %Defines a new funciton called Caeser_cipher with the message you want encrypted, and the shift that will be applied
    ascii_values = double(message); %This command converts each letter into its ASCII value so the code can encrypt it 
    shifted_values = mod(ascii_values - 97 + shift, 26) + 97; %The -95 turns each ASCII value as close to zero, the +shift will add the shift the user inputs to each letter, 
    %the 26 makes sure that if the shift goes further than z, then it will go back and start at a again, the +97 makes sure the encrypted message goes back to the original message                                                                                                    
    encrypted_message = char(shifted_values); %This converts the ASCII values back to letters so then it can be read easily
end
  

   