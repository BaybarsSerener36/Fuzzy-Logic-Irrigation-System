#define ADC0 A0 // ADC0 represents analog pin 0
#define ADC1 A1 // ADC1 represents analog pin 1

int MOTOR_PIN_1 = 2; // L239D driver pin 1 (direction)
int MOTOR_PIN_2 = 3; // L239D driver pin 2 (direction)
int MOTOR_SPEED_PIN = 5; // L239D driver enable pin
float speed;
float duration;

void setup() {
  Serial.begin(9600);
  pinMode(MOTOR_PIN_1, OUTPUT);
  pinMode(MOTOR_PIN_2, OUTPUT);
  pinMode(MOTOR_SPEED_PIN, OUTPUT);
}

void loop() {
  Serial.print(analogRead(ADC0)); // Read and print soil temperature value
  Serial.print(analogRead(ADC1)); // Read and print soil moisture value
  delay(100);

  if (Serial.available() > 0) {  
    Serial.readBytes((char*)&speed, sizeof(speed));  // Read motor speed
    Serial.readBytes((char*)&duration, sizeof(duration)); // Read motor operation duration

    analogWrite(MOTOR_SPEED_PIN, map(speed, 0, 100, 0, 255));
    digitalWrite(MOTOR_PIN_1, HIGH);
    digitalWrite(MOTOR_PIN_2, LOW);
    analogWrite(MOTOR_SPEED_PIN, speed);

    unsigned long startTime = millis();
    while (millis() - startTime < duration * 1000) {}

    digitalWrite(MOTOR_PIN_1, LOW);
    digitalWrite(MOTOR_PIN_2, LOW);
    delay(2000);  
  }
}
