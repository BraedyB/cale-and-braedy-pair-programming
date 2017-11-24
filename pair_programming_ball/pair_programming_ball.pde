Paddle paddles;
float rectX, rectY, rectH, rectW;
PongBall b1;
void setup() {
  //rectX = width/2;
  //rectY = height;
  //rectH = 100;
  //rectW = width;
  size(800, 600);
  b1 = new PongBall(width/2, height/2, 2, 3, 13);
  paddles = new Paddle();
}
void draw() {
  background (0);
  b1.move();
  paddles.move();

  paddles.display();
  b1.display();
  //rectMode(CENTER);
  //noStroke();
  //rect(rectX, rectY/10-10, rectW,rectH);
  //rect(rectX, rectY-50, rectW,rectH);
}
void keyPressed() {
  paddles.handleKeyPressed();
}

void keyReleased() {
  paddles.handleKeyReleased();
}