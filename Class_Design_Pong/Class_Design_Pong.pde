private ArrayList<Shape> shapes = new ArrayList<Shape>();
private int [] paddle = {0, 0}; //Paddle width and height
private int [] player = new int [4];
private Circle cHex;
private Rectangle rHex;
private Rectangle rRGB;

Shape triangle = new Shape (0, 0) {
  void draw() {
    fill (random(255), random(255), random(255));
    triangle ( x, y, x-50, y+50, x+50, y+50);
  }
}
;

public void setup() {
  size (500, 500);

  Rectangle rHex = new Rectangle(player[0], player[1], paddle[0], paddle[1], #00FFEC);
  Rectangle rRGB = new Rectangle(player[2], player[3], paddle[0], paddle[1], color(random(255), random(255), random(255) ) ); 
  cHex = new Circle(width*1/2, height*1/2, width*1/50, #FF6803);

  shapes.add(rHex);
  shapes.add(rRGB);
  shapes.add(cHex);
  shapes.add(triangle);
}

public void draw() {
  background (0); //Black

  //Draw Static Shapes
  for (int i = 0; i<shapes.size(); i++) {
    shapes.get(i).draw();
  }

  //Moving Circle
  cHex.step();
  shapes.get(2).draw();


//Draw Left Paddle
rHex.step();
shapes.get(0).draw();

//Draw Right Paddle
rRGB.step();
shapes.get(1).draw();
}

abstract class Shape {
  public float x;
  public float y;

  private Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }

  abstract void draw();
}
