#define pot A0  // Defining Arduino uno analog pin A0 for potentiometer

void setup() 
{
  Serial.begin(9600); // start serial communication for reading potentiometer value from MATLAB
}

void loop() 
{
  Serial.println(analogRead(pot)); // Pot value sending MATLAB
  delay(100);                      
}
