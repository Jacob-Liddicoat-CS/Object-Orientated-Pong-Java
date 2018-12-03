abstract class Shape {
  public float x;
  public float y;
  
  Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }
  abstract void draw();
}
