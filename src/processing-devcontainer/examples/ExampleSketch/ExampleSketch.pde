float x = 0;
float speed = 2.5;

void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  background(255);
  fill(255, 0, 0);
  ellipse(x, height/2, 20, 20);
  x += speed;
  if (x > width) {
    x = 0;
  }
}
