void score () {
  //Printing Score to the Canvas and resetting game

  //Ball Movement within Pong Table after scoring
  if (ballX == 0+(paddleWidthRatio) || ballX == width-(paddleWidthRatio)) { //Score for Player 2, note the index
    if (ballX == 0+(paddleWidthRatio)) { //Player 2 Score
      score[1] += 1;
    }
    if (ballX == width-(paddleWidthRatio)) { //Player 1 Score
      score[0] += 1;
    }

    //Resetting the Ball Position
    ballX = ballStartX;
    ballY = ballStartY;

    //Resetting the ARROW Controlled Paddle to the center
    player[1] = height/2 - height/paddleHeightRatio/2;
  }

  textSize(0.1*width);
  text(score[0], (width*1/5)-(0.1*width), height*1/5); //Printing to ration of screen, Player 1 is minusing width of font
  // Note: review of Character escape and this seems to "busy" on the screen
  text(score[1], width*4/5, height*1/5);
}
