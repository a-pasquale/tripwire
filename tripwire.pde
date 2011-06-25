const int LEDPin = 11;          // LED connected to digital pin 11
const int photocellPin = 0;     // the cell and 10K pulldown are connected to a0
const int threshold = 850;      // Calibrate this.
int photocellReading;           // the analog reading from the analog resistor divider
int counter;
int state;

void setup() {
  counter = 0;
  state = 0;
  pinMode(LEDPin, OUTPUT); // sets the digital pin as output
  Serial.begin(9600);      // We'll send debugging information via the Serial monitor
}

void loop() {
  photocellReading = analogRead(photocellPin);
  
  if(photocellReading > threshold) { 
    state = 1;                  // Beam isn't broken.
    digitalWrite(LEDPin, HIGH); // Turn LED on.
  } else {
    digitalWrite(LEDPin, LOW);  // Turns LED off.
    if (state == 1) {           // If beam wasn't broken before,
      counter = counter + 1;    // add one to the counter.
    }
    state = 0;                  // The beam was broken.
  }
  
  delay(100); // waits for 100 milliseconds.
  
  Serial.print("Counter = ");
  Serial.println(counter);
}
