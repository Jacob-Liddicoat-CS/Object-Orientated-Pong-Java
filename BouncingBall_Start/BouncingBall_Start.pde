//Refer to From Processing to Java

Ball ball = new Ball(250, 250);

void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

void draw() {
  
  ball.step();
  
  background(0);
  ellipse(ball.x, ball.y, 25, 25);
}

void mouseClicked() {
  ball.targetX = mouseX; //Uses default access modifiers
  ball.targetY = mouseY; //Uses default access modifiers
}
