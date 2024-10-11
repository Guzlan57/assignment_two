function res = save_to_file(file_name, data)
    fileID = fopen(file_name, 'w');
    fprintf(fileID, 'THe average tempurature is %f \n the averate humidity is %f \n the total percep is  %f\n', data');
    fclose(fileID); 
    res = 1
end 