class Button {
  float x,y;
  
  Button() {
    x = width/2;
    y = height/2;
    
    
  }
  //creates the button for the default pong game
  void classicMode() {
    rectMode(CENTER);
    stroke(255);
    if (mouseX < 450 && mouseX > 350 && mouseY < 225 && mouseY > 175) {
      fill(255);
      if (mousePressed) {
        state = 1;
      }
    }
    else {
      fill(163); 
    }
    rect(x,y - 100,100,50);
    textSize(20);
    fill(0);
    text("Classic",x - 30,y - 100);
  }
  //creates the button for Braedy's gamemode
  void flickerMode() {
    rectMode(CENTER);
    stroke(255);
    if (mouseX < 450 && mouseX > 350 && mouseY < 325 && mouseY > 275) {
      fill(255);
      if (mousePressed) {
        state = 2;
      }
    }
    else {
      fill(163); 
    }
    rect(x,y,100,50);
    textSize(20);
    fill(0);
    text("Flicker",x - 30,y);
  }
  //creates button for Cale's gamemode
  void dodgeMode() {
    rectMode(CENTER);
    stroke(255);
    if (mouseX < 450 && mouseX > 350 && mouseY < 425 && mouseY > 375) {
      fill(255);
      if (mousePressed) {
        state = 3;
      }
    }
    else {
      fill(163); 
    }
    rect(x,y + 100,100,50);
    textSize(20);
    fill(0);
    text("Dodge",x - 30,y + 100); 
  }
  
}
//I hate buttons...