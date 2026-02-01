#include <Servo.h>

Servo myServo;

const int trigPin = 10;
const int echoPin = 11;
const int servoPin = 9;

long duration;
int distance;

void setup() {
  Serial.begin(9600);

  myServo.attach(servoPin);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);

  Serial.println("Radar Object Detection Started");
}

void loop() {

  // Rotate from 0° to 180°
  for (int angle = 0; angle <= 180; angle++) {
    myServo.write(angle);
    delay(15);

    distance = measureDistance();

    Serial.print("Angle: ");
    Serial.print(angle);
    Serial.print("°   Distance: ");
    Serial.print(distance);
    Serial.println(" cm");
  }

  // Rotate back from 180° to 0°
  for (int angle = 180; angle >= 0; angle--) {
    myServo.write(angle);
    delay(15);

    distance = measureDistance();

    Serial.print("Angle: ");
    Serial.print(angle);
    Serial.print("°   Distance: ");
    Serial.print(distance);
    Serial.println(" cm");
  }
}

// 🔧 Function to measure distance
int measureDistance() {
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);

  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  duration = pulseIn(echoPin, HIGH, 30000); // timeout 30ms

  if (duration == 0) {
    return 0;   // No object detected
  }

  return duration * 0.034 / 2;
}
