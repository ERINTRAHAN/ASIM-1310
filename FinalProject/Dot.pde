class Dot {
 float x;
 float y;
 float dSize;
 float ySpeed;
 color c;
 
 Dot() {
   x = random(0, width);
   y = -100;
   dSize = 16;
   ySpeed = random(3, 1);
   c = color(random(0,255), random(0,255), random(0,255));
 }
 
 void drawDot() {
   fill(c);
   noStroke();
   ellipse(x, y, dSize, dSize);
 }
 
 void move() {
   y = y + ySpeed;
 }
 
}