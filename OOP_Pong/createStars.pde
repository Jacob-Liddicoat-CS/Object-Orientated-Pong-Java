void createStars(int i) {
  //Notice the code for drawing one
  stars[i] = new Star(random(width), random(height), random(Star.getmaxRadius()));
} 
