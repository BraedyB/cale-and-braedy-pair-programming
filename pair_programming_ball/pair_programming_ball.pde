//classes
Paddle paddles;
Score score;
Button buttons;
PongBall b1;

//global values
float rectX, rectY, rectH, rectW;
int state;

void setup() {
  size(800, 600);
  //creates new class
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
    buttons.title();
    buttons.classicMode();
    buttons.flickerMode();
    buttons.timedMode();
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
    background (0);
    b1.move();
    //stops paddle movement 175 pixels from center
    if (b1.x > width/2 - 175 && b1.x < width/2 + 175) {
      paddles.move();
    }
    
    paddles.display();
    b1.display();
    score.scoreRightSide();
    score.scoreLeftSide();
  }
}

//detects if paddles need to be moved
void keyPressed() {
  paddles.handleKeyPressed();
}

void keyReleased() {
  paddles.handleKeyReleased();
}