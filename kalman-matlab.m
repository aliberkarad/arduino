clc; 
clear;
 
com_port = serial("COM4","BaudRate",9600); // for listen Arduino from COM4 port
fopen(com_port);                           // Listening...
 
cov_0=0;    // First
kalman0=0;  // Values
 
for i=1:100     // taking 100 samples for can draw chart
    
  y(i)=fscanf(com_port,"%d");   // reading arduino serial 
  fprintf("pot=%d\n",y(i)); 
 
  kalman1 = kalman0; 
  cov_1 = cov_0 + 0.50;
 
  kalman_k = cov_1 / (cov_1 + 0.5); 
  kalman_hesaplanan(i)=kalman1+(kalman_k*(y(i)-kalman1)); 
  cov_1 = (1 - kalman_k) * cov_0;
  cov_0 = cov_1; 
  kalman0=kalman_hesaplanan(i); 
 
  hold on
  plot(kalman_hesaplanan,"r--o"); //drawing kalman and normal values
  plot(y,"g");
  legend("kalman filtre","pot değer");
  drawnow 
end

fclose(com_port); //Listening done.
delete(com_port); //COM port closed.
