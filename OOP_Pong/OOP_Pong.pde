//Refer to From Processing to Java

public Boolean start = false;
Ball Ball1 = new Ball(50, 100, color(255));
Ball Ball2 = new Ball(50, 75, color(255));
Ball Ball3 = new Ball(50, 50, color(255));
Ball Ball4 = new Ball(50, 25, color(255));
Paddle Paddle1 = new Paddle(100, 300, color(255));
Paddle Paddle2 = new Paddle(100, 200, color(255));
int [] paddle = {0, 0}; //Paddle width and height
int [] player = new int [4];
int paddleWidthRatio;
int paddleHeightRatio = 10;
int ballDiameter = width/70;
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
  Paddle1.step();
  Paddle2.step();

  fill(Ball1.colour);
  fill(Ball2.colour);
  fill(Ball3.colour);
  fill(Ball4.colour);
  fill(Paddle1.colour);
  fill(Paddle2.colour);

  ellipse(Ball1.x, Ball1.y, Ball1.diameter, Ball1.diameter);  
  ellipse(Ball2.x, Ball2.y, Ball2.diameter, Ball2.diameter);
  ellipse(Ball3.x, Ball3.y, Ball3.diameter, Ball3.diameter);
  ellipse(Ball4.x, Ball4.y, Ball4.diameter, Ball4.diameter);
  rect(player[0], player[1], paddle[0], paddle[1]);
  rect(player[2], player[3], paddle[0], paddle[1]);
}
