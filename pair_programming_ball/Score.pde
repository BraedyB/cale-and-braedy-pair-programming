class Score {
  float x,y,x2,y2;
  int scoreLeft,scoreRight;
  
  Score() {
    x = width/2 + 300;
    y = 30;
    x2 = width/2 - 300;
    y = 30;
    scoreLeft = 0;
    scoreRight = 0;
    
    
    
  }
  
  void scoreRightSide() {
    textMode(CENTER);
    textSize(20);
    fill(255);
    text(scoreRight, x, y);
  }
  
  void scoreLeftSide() {
    textMode(CENTER);
    textSize(20);
    fill(255);
    text(scoreLeft, x2, y2);
    
  }
  
  
  
  
  
  
  
}