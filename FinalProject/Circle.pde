class Circle {
  int s = 400;
  int x = width/2;
  int y = height/2;
  color c = color(0);
  
  
  Circle() {
    c = image.get(x, y);
  }
  
  void drawCircle() {
    fill(c);
    ellipse(x,y,s,s);
  }
  
  void mouseInteraction() {
    
    boolean inCircle = mouseX > x-(s/4) && mouseX < x+(s/4) &&
                       mouseY > y-(s/4) && mouseY < x+(s/4);
    if (inCircle) {
      s=s/2;
      x=x/2;
      y=y/2;
      background(255);
      c = image.get(x,y);
    }
  }
  
}