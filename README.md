# Arduino-Radar-Object-Detection
Radar system using Arduino, Ultrasonic Sensor, Servo &amp; Processing
This project demonstrates a **radar-based object detection system** using:
- Arduino UNO (SMD)
- Ultrasonic Sensor (HC-SR04)
- Servo Motor
- Processing (for radar visualization)

## 🔧 Components Used
- Arduino UNO / UNO SMD
- HC-SR04 Ultrasonic Sensor
- Servo Motor (SG90)
- Jumper Wires
- Breadboard
- USB Cable

## ⚙️ Working Principle
1. The servo motor rotates the ultrasonic sensor from 0° to 180°.
2. The ultrasonic sensor measures the distance of objects.
3. Arduino sends **angle and distance** data via serial communication.
4. Processing reads the data and displays it as a **radar animation**.

## 📐 Circuit Connections

| Component | Arduino Pin |
|---------|-------------|
| Servo Signal | D9 |
| Ultrasonic TRIG | D10 |
| Ultrasonic ECHO | D11 |
| VCC | 5V |
| GND | GND |

## 🧾 Code Structure
# Arduino Radar Object Detection System 📡

This project demonstrates a **radar-based object detection system** using:
- Arduino UNO (SMD)
- Ultrasonic Sensor (HC-SR04)
- Servo Motor
- Processing (for radar visualization)

## 🔧 Components Used
- Arduino UNO / UNO SMD
- HC-SR04 Ultrasonic Sensor
- Servo Motor (SG90)
- Jumper Wires
- Breadboard
- USB Cable

## ⚙️ Working Principle
1. The servo motor rotates the ultrasonic sensor from 0° to 180°.
2. The ultrasonic sensor measures the distance of objects.
3. Arduino sends **angle and distance** data via serial communication.
4. Processing reads the data and displays it as a **radar animation**.

## 📐 Circuit Connections

| Component | Arduino Pin |
|---------|-------------|
| Servo Signal | D9 |
| Ultrasonic TRIG | D10 |
| Ultrasonic ECHO | D11 |
| VCC | 5V |
| GND | GND |

## 🧾 Code Structure
Arduino_Code/
└── radar_arduino.ino
Processing_Code/
└── radar_processing.pde

## ▶️ How to Run
1. Upload Arduino code to the board.
2. Open Serial Monitor (9600 baud) once to verify data.
3. Close Serial Monitor.
4. Run the Processing sketch.
5. Move an object in front of the sensor to see detection.

## 📷 Output
Radar screen shows:
- Green scanning line
- Red dot for detected object
- Angle and distance values

## 🎯 Applications
- Object detection
- Robotics
- Defense radar demo
- Engineering mini project

## 👨‍💻 Author
mohammed fahad

## 📜 License
This project is open-source and free to use for educational purposes.

