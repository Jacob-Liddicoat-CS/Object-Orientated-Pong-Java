void keyPressed() {
  if (keyCode == UP) {
    keys[0] = true;
  }

  if (keyCode == DOWN) {
    keys[1] = true;
  }

  if (key == 'w' || key == 'W') {
    keys[2] = true;
  }

  if (key == 's' || key == 'S') {
    keys[3] = true;
  }
}
