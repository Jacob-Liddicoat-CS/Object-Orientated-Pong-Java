private ArrayList<Shape> shapes = new ArrayList<Shape>();
private Circle cHex;

public void setup() {
  size (500, 500);

  Rectangle rHex = new Rectangle(width*1/4, height*1/4, width*2/4, height*2/4, #00FFEC);
  Rectangle rRGB = new Rectangle(width*3/5, height*3/5, width*1/5, height*1/5, color(random(255), random(255), random(255) ) ); 
  cHex = new Circle(width*1/2, height*1/2, width*1/4, #FF6803);
  
  shapes.add(rHex);
  shapes.add(rRGB);
  shapes.add(cHex);
  
}

public void draw() {
  background (0); //Black
  
  //Draw Static Shapes
  for(int i = 0; i<shapes.size(); i++) {
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
