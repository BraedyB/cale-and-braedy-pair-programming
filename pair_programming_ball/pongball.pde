class PongBall {

  //data//
  float x, y, dx, dy, rad, collideRight;


  //constructors//
  PongBall(float x, float y, float dx, float dy, float rad) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.rad = rad;
    collideRight = dist(x, y, paddles.x + 300, paddles.y);
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
    hitPaddle();
    bounceIfNeeded();
  }

  void bounceIfNeeded() {
    if ( (x > width - rad/2) || (x < 0 + rad/2) ) {
      dx *= -1;
    }

    if ( (y > height - rad/2) || (y < 0 + rad/2) ) {
      dy *= -1;
    }
  }
  void hitPaddle() {
    boolean hit = circleRect(x, y, rad, paddles.x, paddles.y, paddles.rw, paddles.rh);
    if (hit) {
      dx *= -1;
      dy *= -1;
    }
    // CIRCLE/RECTANGLE
    boolean circleRect(x, y, rad, paddles.x, paddles.y, rw, rh) {

      // temporary variables to set edges for testing
      float testX = cx;
      float testY = cy;

      // which edge is closest?
      if (cx < rx)         testX = rx;      // test left edge
      else if (cx > rx+rw) testX = rx+rw;   // right edge
      if (cy < ry)         testY = ry;      // top edge
      else if (cy > ry+rh) testY = ry+rh;   // bottom edge

      // get distance from closest edges
      float distX = cx-testX;
      float distY = cy-testY;
      float distance = sqrt( (distX*distX) + (distY*distY) );

      // if the distance is less than the radius, collision!
      if (distance <= radius) {
        return true;
      }
      return false;
    }
  }