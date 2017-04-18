//Erin Trahan

PImage image;
int s = 400;
int x = width/2;
int y = height/2;

Circle firstCircle;

void setup() {
  size(400, 400);
  background(255);
  image = loadImage("flowers copy.jpg");
  firstCircle = new Circle();
  //image(image, 0, 0);
}

void draw() {
  //pointlism();
  firstCircle.drawCircle();
  firstCircle.mouseInteraction();
}

void pointlism() {
  color c = image.get(x, y);
  for (int y=0; y<height; y=y+s) {
    for (int x=0; x<width; x=x+s) {
      fill(c);
      noStroke();
      ellipse(x+(s/2), y+(s/2), s, s);
    }
  }
}