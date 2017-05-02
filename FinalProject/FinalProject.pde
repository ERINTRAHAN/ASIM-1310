//Erin Trahan

ArrayList<Circle> circles = new ArrayList<Circle>();
PImage image;

Circle firstCircle;

void setup() {
  size(500, 500);
  background(255);
  image = loadImage("redpanda.jpg");
  firstCircle = new Circle();
  circles.add(firstCircle);
  //image(image, 0, 0);
}

void draw() {
  background(255);
  for(int i=circles.size()-1; i>=0; i--) {
    circles.get(i).drawCircle();
  }
  
  for(int i=circles.size()-1; i>=0; i--) {
    if(circles.get(i).mouseInCircle()) {
      println("hello");
      Circle toRemove = circles.get(i);
      circles.remove(i);
      Circle a1 = new Circle(toRemove.x,toRemove.y, toRemove.s/2);
      Circle a2 = new Circle(toRemove.x2, toRemove.y, toRemove.s/2);
      Circle a3 = new Circle(toRemove.x2, toRemove.y2, toRemove.s/2);
      Circle a4 = new Circle(toRemove.x, toRemove.y2, toRemove.s/2);
      
      circles.add(a1);
      circles.add(a2);
      circles.add(a3);
      circles.add(a4);
    }
  }
  
}