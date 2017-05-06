class Circle {
  float s = 500;
  float x = width/2;
  float y = height/2;
  color c = color(0);
  color c2 = color(0);
  color c3 = color(0);
  color c4 = color(0);
  
  Circle() {
    c = image.get((int)x, (int)y);
  }
  
  Circle(float x, float y, float s){
    this.x = x;
    this.y = y;
    this.s = s;
     c = image.get((int)x, (int)y);
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