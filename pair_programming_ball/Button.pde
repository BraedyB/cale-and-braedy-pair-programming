class Button {
  float x,y;
  
  Button() {
    x = width/2;
    y = height/2;
    
    
  }
  
  void classicMode() {
    rectMode(CENTER);
    stroke(255);
    if (mouseX < 600 && mouseX > 200 && mouseY < 450 && mouseY > 150) {
      fill(255);
      if (mousePressed) {
        state = 1;
      }
    }
    else {
      fill(163); 
    }
    rect(x,y,400,300);
    textSize(40);
    fill(0);
    text("Classic",x - 50,y);
    
  }
  
}