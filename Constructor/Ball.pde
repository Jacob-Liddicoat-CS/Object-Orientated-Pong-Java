class Ball {
  float diameter = 20;
  float x = 50;
  float y = 100;
  color colour = color(0, 255, 0);
  float xSpeed = 1;
  float ySpeed = 1;

  void step () {
    //Next Step of Ball
    myBall.x += myBall.xSpeed;
    myBall.y += myBall.ySpeed;

    //Collision with Canvas Boundaries
    if (x+xSpeed < 0 || x+xSpeed > width) { 
      xSpeed *= -1; //Alternating Geomteric Sequence
    }
    if (y+ySpeed < 0 || y+ySpeed > height) {
      ySpeed *= -1; //Alternating Geomteric Sequence
    }
  } //End of step
} //End of Class Ball
