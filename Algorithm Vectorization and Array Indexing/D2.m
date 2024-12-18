%part a
num_rows = size(B, 1);  			%get # of rows in matrix B
num_cols = size(B, 2); 			    %get # of columns in B
for i = 1:num_rows  				%loop through each row
    for j = 1:num_cols  				%loop through each column
        if abs(B(i,j)) < 0.01  			%check if the absolute value of B(i,j) is less than 
                                        % 0.01
            B(i,j) = 0;  				%set that element to zero
        end
    end
end

%part b
B(abs(B) < 0.01) = 0;  			%set all elements where |B| < 0.01 to zero using 
                                % matrix indexing
%part c

%[NESTED LOOP]

tic;  					            %start the timer
num_rows = size(B, 1); 			    %get the number of rows
num_cols = size(B, 2); 			    %get the number of columns
for i = 1:num_rows  				    % Loop through each row
    for j = 1:num_cols  				% Loop through each column
        if abs(B(i,j)) < 0.01  		%check if the absolute value of B(i,j) is less than 
                                     % 0.01
            B(i,j) = 0;  			%set that element to zero
        end
    end
end
toc;  					            %stop the timer and display the elapsed 
                                        %time

%[INDEXING]

tic;  						            %start the timer
B(abs(B) < 0.01) = 0;  			        %set all elements where |B| < 0.01 to zero using 
                                        %matrix indexing
toc;  						            %stop the timer and display the elapsed time

