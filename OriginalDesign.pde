int xPosition = 200;
int xDirection = 1;

void setup() {
  size (400,400);
  smooth();
  background(196, 88, 142);
  sun(75, 75);
  noStroke();
}

void draw() {
  background(101, 153, 237);
  sun(75, 75);
  grass();
  house();
  cloud(100, 200);
  cloud(0, 150);
  cloud(-100, 250);
  cloud(-125, 100);
}

void cloud(int x, int y) {
  fill(255, 255, 255);
  ellipse(xPosition + x, y, 40, 40);
  ellipse(xPosition + 20 + x, y, 30, 30);
  ellipse(xPosition - 20 + x, y, 30, 30);
  xPosition = xPosition + xDirection;
  if (xPosition < 30 || xPosition > 470)
  {
    xDirection =- xDirection;
  }
}

void sun(int x, int y) {
  fill(255, 222, 94);
  ellipse(x, y, 75, 75);
}

void grass() {
  fill(157, 229, 80);
  ellipse(200, 400, 450, 200);
}

void house() {
  fill(165, 36, 16);
  rect(280, 290, 80, 80);
  triangle(280, 290, 360, 290, 320, 250);
}  