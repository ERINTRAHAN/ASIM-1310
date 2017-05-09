/*
Final Project
 Dot It!
 Ineractive Art
 Erin Trahan
 May 9, 2017
 */

ArrayList<Circle> circles = new ArrayList<Circle>();
ArrayList<Dot> dots = new ArrayList<Dot>();

boolean startState = true;

PFont title;
PFont subtitle;
PFont font;

PImage image;
String[] images = new String[] {"redpanda.jpg", "Puppy.jpg", "Lion.jpg"};
int currentFile;

long minT = 200;
long maxT = 400;
long nextDot = round(random(minT, maxT));

void setup() {
  size(500, 500);

  //loading images
  image = loadImage(images[currentFile]);

  //loading fonts
  title = loadFont("Skia-Regular_Black-Condensed-48.vlw");
  subtitle = loadFont("Skia-Regular_Condensed-48.vlw");
  font = loadFont("Skia-Regular_Light-Condensed-48.vlw");
}

void draw() {
  if (startState) { //the beginning start screen

    background(255);

    if (millis() > nextDot) { //timing for raining dots in start screen
      long left = round(minT);
      long right = round(maxT);
      nextDot = nextDot + round(random(left, right));

      dots.add(new Dot());
    }

    for (int i=dots.size()-1; i>=0; i--) { //drawing raining dots in start screen
      dots.get(i).drawDot();
      dots.get(i).move();
    }
    //text for start screen
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
  } else { //not in start screen draw the circles
    background(255);
    for (int i = circles.size()-1; i >= 0; i--) {
      circles.get(i).drawCircle();
    }
  }
  //splitting the circles when the mouse is inside the each circle
  for (int i = circles.size()-1; i >= 0; i--) {
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
  //pressing a certain key for certain image
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
    startState = true; //returns to start screen
  }
  circles.clear(); //clearing old arraylist of circles
  circles.add(new Circle()); //starting with new circles
  image = loadImage(images[currentFile]); //calling correct image
}