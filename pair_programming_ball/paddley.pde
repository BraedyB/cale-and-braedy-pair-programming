  Paddle paddles;

void setup() {
  size(800,600);
  
  
  paddles = new Paddle();
}

void draw() {
  background(0);
  paddles.move();
  
  paddles.display();

  
  
}

void keyPressed() {
  paddles.handleKeyPressed();
}
  
void keyReleased() {
  paddles.handleKeyReleased();
}