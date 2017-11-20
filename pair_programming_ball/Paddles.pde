class Paddle {
   //data
  float x, y, dx, dy;
  //constructors
  Paddle() {
    x = width/2 + 300;
    y = height/2 - 50;
    dx = 5;
    dy = 5;
  }
  //behave... you monkey.
  void display() {
    fill(255);
    rect(x,y,20,100);
  }
  void move() {
   if (keyPressed == true){
     if (keyCode == UP){
       y -= dy;
     }
     if (keyCode == DOWN) {
       y += dy;
     }
   }
  }
}