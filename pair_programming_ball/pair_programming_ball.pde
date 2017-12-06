Paddle paddles;
Score score;
Button buttons;

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
  buttons = new Button();
  
  state = 0;

}
void draw() {
  //main menu
  if (state == 0) {
    background(0);
    buttons.classicMode();
    buttons.flickerMode();
    buttons.dodgeMode();
  }
  
  //classic mode
  if (state == 1) {
    background (0);
    b1.move();
    paddles.move();

    paddles.display();
    b1.display();
    score.scoreRightSide();
    score.scoreLeftSide();
  }
  //Braedy's gamemode
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
  }
  //Cale's gamemode
  if (state == 3) {
    
    
  }
}
void keyPressed() {
  paddles.handleKeyPressed();
}

void keyReleased() {
  paddles.handleKeyReleased();
}