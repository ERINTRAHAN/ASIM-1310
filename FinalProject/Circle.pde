class Circle {
  int s = 500;
  int x = width/2;
  int y = height/2;
  color c = color(0);
  color c2 = color(0);
  color c3 = color(0);
  color c4 = color(0);
  int x2 = (x/2) + s;
  int y2 = (y/2) + s;
  
  Circle() {
    c = image.get(x, y);
  }
  
  Circle(int x, int y, int s){
    this.x = x;
    this.y = y;
    this.s = s;
     x2 = x + s;
     y2 = y + s;
     c = image.get(x, y);
  }
  
  void drawCircle() {
    noStroke();
    fill(c);
    ellipse(x,y,s,s);
  }
  
    boolean mouseInCircle() {
    float dist = dist(x,y,mouseX,mouseY);//sqrt(pow(mouseX - x,2) + pow(mouseY - y,2));
    return dist<(s/2);
  }
  
  
}