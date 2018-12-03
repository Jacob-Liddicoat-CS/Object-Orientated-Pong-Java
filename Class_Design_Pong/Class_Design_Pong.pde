public ArrayList <Shape> shapes = new ArrayList<Shape>();
private static boolean [] keys = new boolean [4];
public Ball ball;
public Paddle leftPaddle;
public Paddle rightPaddle;

public void setup() {
  size (500, 600);

  leftPaddle = new Paddle(0, radius - height/5, radius, height/10, #00FFEC);
  rightPaddle = new Paddle((radius - 1)/radius, height/2, radius, height/10, color(random(255), random(255), random(255) ) ); 
  ball = new Ball(width/2, height/2, width/50, #FF6803);

  shapes.add(leftPaddle);
  shapes.add(rightPaddle);
  shapes.add(ball);
}

public void draw() {
  background (0); //Black

  for (int i = 0; i < shapes.size; i++) {
    shapes.get(i).draw();
  }
  leftPaddle.draw();
  rightPaddle.draw();
  
  abstract class Shape {
  public float x;
  public float y;

   Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }

abstract void draw();
}
}
