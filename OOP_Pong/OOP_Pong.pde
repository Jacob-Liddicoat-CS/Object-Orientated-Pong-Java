//Refer to From Processing to Java

private Boolean start = false;
private Star[] stars = new Star[Star.getstarCount()]; //only varaibles is how many stars to draw

public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);

  //Need drawing of ball before mouseClick(), two lines of the same code
  for (int i = 0; i < stars.length; i++) {
    createStars(i);
  }
} //End of setup()

public void draw() {
  startStop();

  if (start==true) {

    background(0);

    //Notice the array-code for drawing one
    for (int i = 0; i < stars.length; i++) {
      ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
    }
  } //End of startStop
} //End draw()

public void mouseClicked() {
  for (int i = 0; i < stars.length; i++) {
    createStars(i);
  }
} //End of mouseClicked()
