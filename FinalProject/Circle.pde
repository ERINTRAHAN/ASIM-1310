class Circle {
  int s = 400;
  int x = width/2;
  int y = height/2;
  color c = color(0);
  
  
  
  Circle() {
    c = image.get(x, y);
  }
  
  void setSplit(int newX, int newY, int newSize) {
   this.x = newX;
   this.y = newY;
   this.s = newSize;

  }
  
  void drawCircle() {
    noStroke();
    fill(c);
    ellipse(x,y,s,s);
  }
  
    boolean mouseInCircle() {
    float dist = sqrt(pow(mouseX - x,2) + pow(mouseY - y,2));
    return dist<(s/2);
  }
  
  void mouseInteraction() {
    
    if (mouseInCircle()) {
      s=s/2;
      x=x/2;
      y=y/2;
      background(255);
      c = image.get(x,y);
    }
  }
  
}