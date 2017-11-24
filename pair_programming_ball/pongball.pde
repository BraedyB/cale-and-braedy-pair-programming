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
    hitPaddles();
    bounceIfNeeded();
  }

  void bounceIfNeeded() {
    if ( (x > width - rad/2) || (x < 0 + rad/2) ) {
      dx *= -1;
    }

    if ( (y > height - rad/2) || (y < 0 + rad/2) ) {
      dy *= -1;
    }
    if (hit) {
      dx *= -1;
      dy *= -1;
    }
  }
  void hitPaddles() {
    boolean hit = circleRect(x, y, rad, paddles.x, paddles.y, paddles.rw, paddles.rh);
    // CIRCLE/RECTANGLE
    boolean circleRect(x, y, rad, paddles.x, paddles.y, paddles.rw, paddles.rh)

      float testX = cx;
      float testY = cy;

      // which edge is closest?
      if (x < paddles.x) {
        testX = paddles.x;      // test left edge
      } else if (x > paddles.x + paddles.rw) {
        testX = paddles.x + paddles.rw;   // right edge
      }
      if (y < paddles.y) {      
        testY = paddles.y;      // top edge
      } else if (y > paddles.y + paddles.rh) {
        testY = paddles.y + paddles.rh;   // bottom edge
      }

      // get distance from closest edges
      float distX = x - paddles.x;
      float distY = y - paddles.y;
      float distance = sqrt( (distX*distX) + (distY*distY) );

      // if the distance is less than the radius, collision!
      if (distance <= rad) {
        return true;
      }
      return false;
    }
  }
}