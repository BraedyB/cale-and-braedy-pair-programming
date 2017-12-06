class PongBall { //BB did all except for hit detection and CL gamemode

  //data//
  float x, y, dx, dy, rad;
  float pick;
  float greyBoy;
  float bColor = 255;

  //constructors//
  PongBall(float x, float y, float dx, float dy, float rad) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.rad = rad;
  }


  //behaviours//
  void display() {
    noStroke();
    fill(bColor);
    ellipse(x, y, rad*2, rad*2);
  }
  
  //moves the ball
  void move() {
    x += dx;
    y += dy;
    bounceIfNeeded();
  }
  
  //chooses whether or not the ball should be black or grey
  void pickFlicker(){
    pick = random(1,2);
    if (pick >= 1){
      greyBoy = -50;
    }else{
      greyBoy = 50;
    }
  }
  
  //timer for the ball flicker
  void ballFlicker(){
    greyBoy = 50;
      
    int m = millis();
    bColor = ((m % 100) - greyBoy);
  }

  //checks if the ball needs to bounce
  void bounceIfNeeded() {
    //data for paddle hit dectection
    float testX = x;
    float testY = y;
    float _testX = x;
    float _testY = y;
    
    //checks if the ball has hit either side (if it has, adds a point to the respective side)
    //right paddle
    if ( (x > width - rad/2) ) {
      x = width/2;
      y = height/2;
      dx *= -1;
      score.scoreLeft += 1;
    }
    if ( (x < 0 + rad/2) ) {
      x = width/2;
      y = height/2;
      dx *= -1;
      score.scoreRight += 1;
    }
    
    //checks if the ball has hit the top or bottom of the screen
    if ( (y > height - rad/2) || (y < 0 + rad/2) ) {
      dy *= -1;
    }
    
    //checks if the ball has hit either of the paddles---------
    if (x < paddles.x) {
      testX = paddles.x;
    } 
    else if (x > paddles.x+ paddles.rw) {
      testX = paddles.x + paddles.rw;
    }// right edge
    if (y < paddles.y) {
      testY = paddles.y;
    }// top edge
    else if (y > paddles.y+ paddles.rh) {
      testY = paddles.y + paddles.rh;
    }// bottom edge
    
    float distX = x - testX;
    float distY = y - testY;
    float distance = sqrt( (distX * distX) + (distY * distY) );
    
    //left paddle
    if (distance <= rad) {
      dx *= -1;
    }
    
    if (x < paddles.x2) {
      _testX = paddles.x2;
    } 
    else if (x > paddles.x2 + paddles.rw) {
      _testX = paddles.x2 + paddles.rw;
    }// right edge
    if (y < paddles.y2) {
      _testY = paddles.y2;
    }// top edge
    else if (y > paddles.y2 + paddles.rh) {
      _testY = paddles.y2 + paddles.rh;
    }// bottom edge
    
    float _distX = x - _testX;
    float _distY = y - _testY;
    float _distance = sqrt( (_distX * _distX) + (_distY * _distY) );
    
    if (_distance <= rad) {
      dx *= -1;
    }
    //----------------------------------------------------------------
  }
}