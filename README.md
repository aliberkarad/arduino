# Arduino Kalman Filter Trial  		 	 	 	 	 	
>The Kalman Filter is a filter that can predict the states of the system from the input and output information, together with the previous information of the model, in a dynamic system represented by the state space model. It was invented by the Hungarian-American mathematical systems theorist Rudolf Kalman.

As a simple application of the Kalman filter, the experiment will be carried out with Arduino and potentiometer. In the experiment, a potentiometer is used for the signal received from the system.

![image](https://user-images.githubusercontent.com/43043692/128352265-a3aeb179-a977-4ec0-b4cd-d0494c091b68.png)

Our circuit in the figure was created using Arduino Uno to create instantaneously variable values with a potentiometer connected to the A0 analog leg of the board.
With the generated [code](uno-pot-control.ino), Arduino will send the values read with the pot to the MATLAB application via the serial communication port ( `Serial.print()` ).

---------------------------------------

By listening to Arduino serial communication using MATLAB application, the incoming values will be filtered by the written [MATLAB code](kalman-matlab.m). Then, using the calculated and nominal values, the graphic will be drawn instantly.
In the drawing process, the `for` loop is used to determine the graphic range. If desired, more samples can be taken by changing the `i` value in `for`.

__This output is taken as result of the program;__

![image](https://user-images.githubusercontent.com/43043692/128352373-09dd34cd-87e0-4c2b-b283-29f6920ed6c7.png)
