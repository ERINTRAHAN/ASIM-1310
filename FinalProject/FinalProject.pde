//Erin Trahan

ArrayList<Circle> circles = new ArrayList<Circle>();
PImage image;

Circle firstCircle;

void setup() {
  size(400, 400);
  background(255);
  image = loadImage("flowers copy.jpg");
  firstCircle = new Circle();
  circles.add(firstCircle);
  //image(image, 0, 0);
}

void draw() {
  
  for(int i=circles.size()-1; i>=0; i--) {
    circles.get(i).drawCircle();
    if (circles.get(i).mouseInCircle()) {
      circles.remove(i);
    }
  }
  
  for(int i=circles.size()-1; i>=0; i--) {
    if(circles.get(i).mouseInCircle()) {
      Circle toRemove = circles.get(i);
      circles.remove(i);
      Circle a1 = new Circle();
      Circle a2 = new Circle();
      Circle a3 = new Circle();
      Circle a4 = new Circle();
      a1.setSplit(toRemove.x, toRemove.y, toRemove.s / 2);
      a2.setSplit(toRemove.x, toRemove.y, toRemove.s / 2);
      a3.setSplit(toRemove.x, toRemove.y, toRemove.s / 2);
      a4.setSplit(toRemove.x, toRemove.y, toRemove.s / 2);
      circles.add(a1);
      circles.add(a2);
      circles.add(a3);
      circles.add(a4);
    }
  }
  
}