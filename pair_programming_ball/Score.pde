class Score {
  //data
  float x,y,x2,y2;
  int scoreLeft,scoreRight;
  
  //constructor
  Score() {
    x = width/2 + 300;
    y = 30;
    x2 = width/2 - 315;
    y = 30;
    scoreLeft = 0;
    scoreRight = 0;
  }
  
  //behavour
  void scoreRightSide() {
    textSize(20);
    fill(255);
    text(scoreRight, x, y);
  }
  
  void scoreLeftSide() {
    textSize(20);
    fill(255);
    text(scoreLeft, x2, 30);
    
  }
  
  
  
  
  
  
  
}