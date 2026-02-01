import processing.serial.*;

Serial port;
String data;
int angle = 0;
int distance = 0;

void setup() {
  pixelDensity(1);
  size(800, 400);

  // CHANGE COM PORT IF REQUIRED
  port = new Serial(this, "COM7", 9600);
}

void draw() {

  // Read serial data
  while (port.available() > 0) {
    data = port.readStringUntil('.');
    if (data != null) {
      data = trim(data);
      String[] values = split(data, ',');
      if (values.length == 2) {
        angle = int(values[0]);
        distance = int(values[1]);
      }
    }
  }

  background(0);
  translate(width / 2, height);

  drawRadar();
  drawScanLine();
  drawObject();
  drawText();
}

void drawRadar() {
  stroke(0, 255, 0);
  noFill();

  arc(0, 0, 600, 600, PI, TWO_PI);
  arc(0, 0, 400, 400, PI, TWO_PI);
  arc(0, 0, 200, 200, PI, TWO_PI);
}

void drawScanLine() {
  stroke(0, 255, 0);
  float x = 300 * cos(radians(angle));
  float y = -300 * sin(radians(angle));
  line(0, 0, x, y);
}

void drawObject() {
  if (distance > 0 && distance <= 200) {
    fill(255, 0, 0);
    noStroke();

    float r = map(distance, 0, 200, 0, 300);
    float x = r * cos(radians(angle));
    float y = -r * sin(radians(angle));

    ellipse(x, y, 10, 10);
  }
}

void drawText() {
  resetMatrix();
  fill(0, 255, 0);
  textSize(16);

  text("Angle : " + angle, 20, 30);
  text("Distance : " + distance + " cm", 20, 55);
}
