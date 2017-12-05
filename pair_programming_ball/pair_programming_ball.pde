Paddle paddles;
Score score;
Button normalGame;

float rectX, rectY, rectH, rectW;
int state;
PongBall b1;
void setup() {
  //rectX = width/2;
  //rectY = height;
  //rectH = 100;
  //rectW = width;
  size(800, 600);
  b1 = new PongBall(width/2, height/2, 2, 3, 13);
  paddles = new Paddle();
  score = new Score();
  normalGame = new Button();
  
  state = 0;

}
void draw() {
  if (state == 0) {
    background(0);
    normalGame.classicMode();
  }
  
  
  if (state == 1) {
    background (0);
    b1.move();
    paddles.move();

    paddles.display();
    b1.display();
    score.scoreRightSide();
    score.scoreLeftSide();
    //rectMode(CENTER);
    //noStroke();
    //rect(rectX, rectY/10-10, rectW,rectH);
    //rect(rectX, rectY-50, rectW,rectH);
  }
  if (state == 2) {
    background (0);
    b1.pickFlicker();
    b1.ballFlicker();
    b1.move();
    paddles.move();

    paddles.display();
    b1.display();
    score.scoreRightSide();
    score.scoreLeftSide();
    //rectMode(CENTER);
    //noStroke();
    //rect(rectX, rectY/10-10, rectW,rectH);
    //rect(rectX, rectY-50, rectW,rectH);
  }
}
void keyPressed() {
  paddles.handleKeyPressed();
}

void keyReleased() {
  paddles.handleKeyReleased();
}