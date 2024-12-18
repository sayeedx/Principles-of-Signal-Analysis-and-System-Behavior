% Problem A.1
figure(1);                                                                     %the addition of the figure line allows for all graphs
                                                                                   %to pop up when running the code 

t = (-2:2);                                                                     % Time range for the function from -2 to 2
f = @(t) exp(-t).*cos(2*pi*t);		            %Define function 
plot(t,f(t));				            %plots the function f(t) vs time(t)
xlabel('t'); ylabel('f(t)'); title("Graph of Fig 1.46"); grid; %titles, and grid allows for gridlines on the graph

figure(2);
t = (-2:0.01:2);                                                              %Time range for the function from -2 to 2
f = @(t) exp(-t).*cos(2*pi*t);                                         %Define function 
plot(t,f(t));                                                                     %plots the function f(t) vs time(t)
xlabel('t'); ylabel('f(t)'); title("Graph of Fig 1.47"); grid; %titles, and grid allows for gridlines on the graph

%Problem A.2
figure(3);
t = (-2:2);				            % Time range for the function from -2 to 2
f = @(t) exp(-t);				            %Define function 	
plot(t,f(t));	                                                       %plots the function f(t) vs time(t)
xlabel('t'); ylabel('f(t)'); title("Graph of e^-^t"); grid;      %titles, and grid allows for gridlines on the graph