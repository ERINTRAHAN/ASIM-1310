//Erin Trahan

ArrayList<Circle> circles = new ArrayList<Circle>();
PImage image;
boolean startState = true;

PFont title;
PFont subtitle;
PFont font;


String[] images = new String[] {"redpanda.jpg", "Puppy.jpg", "Lion.jpg"};
int currentFile;

Circle firstCircle;

void setup() {
  size(500, 500);
  background(255);

  image = loadImage(images[currentFile]);

  title = loadFont("Skia-Regular_Black-Condensed-48.vlw");
  subtitle = loadFont("Skia-Regular_Condensed-48.vlw");
  font = loadFont("Skia-Regular_Light-Condensed-48.vlw");

  firstCircle = new Circle();
  circles.add(firstCircle);
}

void draw() {

  if (startState) {
    background(255);

    fill(0);
    textFont(title, 50);
    text("Dot It!", 165, 50);

    textFont(subtitle, 40);
    text("Enter the number for the picture", 50, 130);
    text("you want.", 170, 175);

    textFont(font, 50);
    text("1. Red Panda", 165, 260);
    text("2. Happy Puppy", 165, 320);
    text("3. Lion Cub", 165, 385);

    textFont(subtitle, 30);
    text("Press space to return to this screen when done.", 50, 470);
  } else {
    background(255);
    for (int i=circles.size()-1; i>=0; i--) {
      circles.get(i).drawCircle();
    }
  }



  for (int i=circles.size()-1; i>=0; i--) {
    if (circles.get(i).mouseInCircle()) {
      Circle toRemove = circles.get(i);
      circles.remove(i);

      Circle a1 = new Circle(toRemove.x - toRemove.s/4, toRemove.y - toRemove.s/4, toRemove.s/2);
      Circle a2 = new Circle(toRemove.x - toRemove.s/4, toRemove.y + toRemove.s/4, toRemove.s/2);
      Circle a3 = new Circle(toRemove.x + toRemove.s/4, toRemove.y - toRemove.s/4, toRemove.s/2);
      Circle a4 = new Circle(toRemove.x + toRemove.s/4, toRemove.y + toRemove.s/4, toRemove.s/2);

      circles.add(a1);
      circles.add(a2);
      circles.add(a3);
      circles.add(a4);
    }
  }
}


void keyPressed() {

  if (key == '1') {
    startState = false;
    currentFile = 0;
  } else if (key == '2') {
    startState = false;
    currentFile = 1;
  } else if (key == '3') {
    startState = false;
    currentFile = 2;
  } else if (key == ' ') {
    startState = true;
  }
  image = loadImage(images[currentFile]);
}