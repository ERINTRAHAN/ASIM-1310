class Dot {
 float x =0;
 float y =0;
 float dSize;
 float ySpeed =0;
 color c;
 
 Dot() {
   x=random(0,width);
   y=-100;
   dSize=16;
   ySpeed=random(5,2);
   c = color(random(0,255), random(0,255), random(0,255));
 }
 
 void drawDot() {
   fill(c);
   noStroke();
   ellipse(x,y,dSize,dSize);
 }
 
 void move() {
   y = y + ySpeed;
 }
}