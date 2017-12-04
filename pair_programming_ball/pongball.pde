class PongBall {

  //data//
  float x, y, dx, dy, rad;


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
    fill(255);
    ellipse(x, y, rad*2, rad*2);
  }

  void move() {
    x += dx;
    y += dy;
    bounceIfNeeded();
  }

  void bounceIfNeeded() {
    float testX = x;
    float testY = y;
    float _testX = x;
    float _testY = y;
    
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

    if ( (y > height - rad/2) || (y < 0 + rad/2) ) {
      dy *= -1;
    }
    
    
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
  }
}