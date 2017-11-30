class Paddle {
  //data
  float x, y, x2, y2, rw, rh; 
  float dx, dy;
  boolean movingUp, movingUp2, movingDown, movingDown2;
  //constructors
  Paddle() {
    //location and speed
    x = width/2 + 300;
    y = height/2;
    x2 = width/2 - 300;
    y2 = height/2;
    dx = 5;
    dy = 5;
    rw = 20;
    rh = 100;
    //motion control
    movingUp = false;
    movingUp2 = false;
    movingDown = false;
    movingDown2 = false;
  }
  //behave... you monkey.
  //shows paddles
  void display() {
    noStroke();
    fill(255);
    rect(x, y, rw, rh);
    rect(x2, y2, rw, rh);
  }
  //movement
  void move() {
    if (movingUp && y > 0) {
      y -= dy;
    }
    if (movingDown&& y < height - 100) {
      y += dy;
    }
    if (movingUp2 && y2 > 0) {
      y2 -= dy;
    }
    if (movingDown2 && y2 < height - 100) {
      y2 += dy;
    }
  }
  void handleKeyPressed() {
    if (keyCode == UP ) {
      movingUp = true;
    }
    if (keyCode == DOWN ) {
      movingDown = true;
    }
    if (key == 'w' || key == 'W' ) {
      movingUp2 = true;
    }
    if (key == 's' || key == 'S' ) {
      movingDown2 = true;
    }
  }
  void handleKeyReleased() {
    if (keyCode == UP) {
      movingUp = false;
    }
    if (keyCode == DOWN) {
      movingDown = false;
    }
    if (key == 'w' || key == 'W') {
      movingUp2 = false;
    }
    if (key == 's' || key == 'S') {
      movingDown2 = false;
    }
  }
}