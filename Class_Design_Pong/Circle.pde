class Circle extends Shape {

  Circle(float x, float y, float diameter, float diameter, color c) {
    super(x, y);
    this.diameter = diameter;
    this.c =c;
  }

  void draw() {
    fill(c);
    ellipse(x, y, diameter, diameter);
  }
}
