class Rectangle extends Shape {
  private float width;
  private float height;
  private float radius;
  private color c;
  private int paddleHeightRatio = 10;

  private Rectangle(float x, float y, float width, float height, float radius, color c) {
    super(x, y);
    this.width = width;
    this.height = height;
    this.c = c;
    this.radius = radius;
  }

  public void draw() {
    fill(c);
    rect(x, y, width, height);
    paddle[0] = radius;
    paddle[1] = height/paddleHeightRatio;
    player[0] = 0;
    player[1] = height/2 - height/paddleHeightRatio/2;
    int section = width / radius;
    player[2] = width*(section-1)/section;
    player[3] = height/2;
  }

  private void step() {
    //Code to Move Paddles, keyboard and mouseX&Y key variables
    //Player 1 Movement
    if (keyPressed == true & key == CODED) { //alternate is void keyPressed(){}, always contains the most recent keyboard key stroke
      if (keyCode == UP) { //KeyCode is used for UP, DOWN, LEFT, and RIGHT; and ALT, CONTROL, and SHIFT
        if (player[1] >= 5) { //Easier to use && instead of nesting IF Statements
          player[1] -= 5; //Review incrementation other than -1
        }
        if (player[1] < 0) { //Catch any subtraction equalling less than zero
          player[1] = 0;
        }
      }

      if (keyCode == DOWN) {
        if (player[1] + paddle[1] <= height) {
          player[1] += 5; //Review incrementation other than +1
        }
        if (player[1] + paddle[1] > height) {
          player[1] = height - paddle[1] - 1; //Cannot add "player[1] + paddle[1]" in an assignment; thus, algebra needed
          //Note: the "-1" shows the black border of the paddle at the bottom, which looks more aesthetic
          //Note: the height is actaully -1 pixel because of the border
        }
      }
    } //End of keyPressed
    //Player 2 Movement
    if (mouseY >=0 || mouseY - paddle[1] < height) {
      player[3] = mouseY;
    }
    if (mouseY >= height - paddle[1]) {
      player[3] = height - paddle[1] - 1;
    }
  }
}
