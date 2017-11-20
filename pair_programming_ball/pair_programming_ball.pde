PongBall b1;
void setup(){
  size(800,600);
  b1 = new PongBall(width/2,height/2,2,3,10);
}
void draw(){
   background (0);
   b1.move();
   b1.display();

}