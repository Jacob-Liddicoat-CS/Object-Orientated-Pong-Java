class Rectangle extends Shape {
  private float width;
  private float height;
  private color c;

  Rectangle(float x, float y, float width, float height, color c) {
    super(x, y);
    this.width = width;
    this.height = height;
    this.c = c;
  }

  void draw() {
    fill(c);
    rect(x, y, width, height);
  }
}
