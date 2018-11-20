void score () {
  //Printing Score to the Canvas

    println("\n\nGame is over"); //Escapes because Console log happens in other classes
    for (int i=0; i<balls.length; i++) {
      Score1 += balls[i].scorePlayer1;
      Score2 += balls[i].scorePlayer2;
      //println("Player 1:", balls[i].scorePlayer1);
      //println("Player 2:", balls[i].scorePlayer2);
    }
    
    textSize(0.1*width);
    text(Score1, (width*1/5)-(0.1*width), height*1/5); //Printing to ration of screen, Player 1 is minusing width of font
    // Note: review of Character escape and this seems to "busy" on the screen
    text(Score2, width*4/5, height*1/5);
    println("Player 1:", Score1, "\tPlayer 2:", Score2); //Escapes because Console log happens in other classes
    exit();
  }
