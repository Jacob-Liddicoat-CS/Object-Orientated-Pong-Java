class Ball {
  int x = 250;
  int y = 250;

  int targetX = 250;
  int targetY = 250;

  void step() {
    if (x < targetX) {
      x++;
    } else {
      x--;
    }

    if (y < targetY) {
      y++;
    } else {
      y--;
    }
  } //End of step

    Ball(int x, int y) {
      this.x = x;
      this.y = y;
    }
  }
