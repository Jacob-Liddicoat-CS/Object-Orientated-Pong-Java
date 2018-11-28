private ArrayList<Shape> shapes = new ArrayList<Shape>();
private Circle cHex;

Shape triangle = new Shape (0, 0) {
  void draw() {
    fill (random(255), random(255), random(255));
    triangle ( x, y, x-50, y+50, x+50, y+50);
  }
}
;

public void setup() {
  size (500, 500);

  Rectangle rHex = new Rectangle(0, height*4/10, width*1/100, height*1/10, #00FFEC);
  Rectangle rRGB = new Rectangle(494, height*4/10, width*1/100, height*1/10, color(random(255), random(255), random(255) ) ); 
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
