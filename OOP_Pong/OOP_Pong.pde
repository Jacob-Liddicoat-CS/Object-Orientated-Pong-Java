//Refer to From Processing to Java

public Boolean startKeyboard = false;
Ball Ball1 = new Ball(50, 100, color(255));
Ball Ball2 = new Ball(50, 75, color(255));
Ball Ball3 = new Ball(50, 50, color(255));
Ball Ball4 = new Ball(50, 25, color(255));
public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);
} //End of setup()

public void draw() {
  background(0);

  startStop(); //Update Start Variable or Quit Program

  Ball1.step();
  Ball2.step();
  Ball3.step();
  Ball4.step();

  fill(Ball1.colour);
  fill(Ball2.colour);
  fill(Ball3.colour);
  fill(Ball4.colour);

  ellipse(Ball1.x, Ball1.y, Ball1.diameter, Ball1.diameter);  
  ellipse(Ball2.x, Ball2.y, Ball2.diameter, Ball2.diameter);
  ellipse(Ball3.x, Ball3.y, Ball3.diameter, Ball3.diameter);
  ellipse(Ball4.x, Ball4.y, Ball4.diameter, Ball4.diameter);
}
