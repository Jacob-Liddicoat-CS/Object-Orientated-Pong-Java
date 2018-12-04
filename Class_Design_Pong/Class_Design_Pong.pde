public ArrayList <Shape> shapes = new ArrayList<Shape>();
private static boolean [] keys = new boolean [4];
public Ball ball;
public Paddle leftPaddle;
public Paddle rightPaddle;
static int [] scores = new int [2];
public float radius = getRadius();

Shape Score1 = new Shape(50, 50) {
  public void draw() {
    text(ClassDesignPong.scores[0], x, y);
  }
};

Shape Score2 = new Shape(400, 50) {
  public void draw() {
    text(ClassDesignPong.scores[1], x, y);
  }
};

public void setup() {
  size (500, 600);

  leftPaddle = new Paddle(0, radius - height/5, radius, height/10, #00FFEC);
  rightPaddle = new Paddle((radius - 1)/radius, height/2, radius, height/10, color(random(255), random(255), random(255) ) ); 
  ball = new Ball(width/2, height/2, width/50, #FF6803);

  shapes.add(Score1);
  shapes.add(Score2);
  shapes.add(ball);
}

public void draw() {
  background (0); //Black
  leftPaddle.draw();
  rightPaddle.draw();
}

abstract class Shape {
  float x;
  float y;
  Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }

  abstract void draw();
}
