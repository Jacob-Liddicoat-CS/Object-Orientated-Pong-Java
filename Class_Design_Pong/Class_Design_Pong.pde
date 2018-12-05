public ArrayList <Shape> shapes = new ArrayList<Shape>();
private static boolean [] keys = new boolean [4];
public Ball[] ball = new Ball[5];
public int ballCount = 0;
private int Score1 = 0, Score2 = 0;
public Paddle leftPaddle;
public Paddle rightPaddle;
public static int [] score = {0, 0};
public float radius;

public void setup() {
  size (500, 600);

  leftPaddle = new Paddle(0, radius - height/5, radius, height/10, #00FFEC);
  rightPaddle = new Paddle((radius - 1)/radius, height/2, radius, height/10, color(random(255), random(255), random(255) ) ); 
  ball[0] = new Ball(width/2, height/2, width/50, #FF6803);
  ballCount = 1;

  shapes.add(leftPaddle);
  shapes.add(rightPaddle);
  shapes.add(ball[0]);
}

public void draw() {
  background (0); //Black
  if (ballCount >= ball.length) { //Array out of Bounds
    exit();
  }
  ball[0].draw();
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
