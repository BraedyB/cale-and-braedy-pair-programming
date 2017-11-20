class PongBall {
  
  //data//
  float x,y,dx,dy,rad;
  
  
  //constructors//
  PongBall(float x, float y, float dx, float dy, float rad){
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.rad = rad;
  }
  
  
  //behaviours//
  void display(){
    fill(255);
    ellipse(x,y,rad*2,rad*2);
  }
  
  void move(){
    x += dx;
    y += dy;
    bounceIfNeeded();
  }
  
  void bounceIfNeeded(){
    if ((x+rad > width) || (x-rad <0)){
      dx*= -1;
    }
    if ((y+rad > height) || (y-rad <0)){
      dy*= -1;
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
}