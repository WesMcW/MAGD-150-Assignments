//E.X. 8 Importing text was used for reference

char[] name;
boolean nameEntered, recordScreen;
PFont f, F, F1;
String fileName;
int centerX, centerY, off1, off2;
import processing.pdf.*;
Actor actor;

void setup() {
  size(600, 600);
  background(64);
  surface.setTitle("That one m0Vie");
  f = createFont("Hollywood Hills", 50);
  F = createFont("Good Times", 50);      // These are the 3 fonts which are created and used.
  F1 = createFont("X-Files", 25);
  fileName = "Movie";

  name = new char[0];
  actor = new Actor();
}

void draw() {
  background(198, 116, 57);
  requestName();  
  
  if (recordScreen) {
    beginRecord(PDF, fileName + ".pdf");
  }
  if (recordScreen) {                // This is the part that saves the current screen to a PDF.
    endRecord();
    recordScreen = false;
  }
}
void mousePressed() {
  if (mouseButton == RIGHT) {
    recordScreen = true;
  }
}

void update(){      // update gives random values for the circle to call.
  centerX = round(random(0, width));
  centerY = round(random(0, height));
  off1 = 1;
  off2 = 1;
}

void Circle() {      // Circle creates a ellipse which calles the values in update for its paramiters.
  ellipseMode(CENTER);
  fill(255, 214, 102);
  stroke(255, 10, 214);
  ellipse(centerX, centerY, 100, 100);
}

void keyTyped() {
  enterName(actor);
}

void requestName() {
  
  if (!nameEntered) {      // This is where the function that askes for the name of an actor of choice.
    fill(0, 255, 251);
    textFont(F1);
    text("Enter Leading Actor", 170, height/2);
    fill(0, 127, 0);
    stroke(170, 0, 255);
    line(200, height / 2.0 + 24, 400, height / 2.0 + 24);
    text(new String(name), 260, height / 2.0 + 20);
  } else {
    displayName();
  }
}

void displayName() {      // Then the actor name which the user enters is printed with this function.
  background(115, 48, 48);
  update();
  Circle();
  fill(#84e9f4);
  textFont(F);
  textAlign(CENTER);
  text("That One Movie", width/2, 100);
  
  fill(#6ba0f4);
  textFont(f);
  textAlign(LEFT);
  text("Starring:", 10, 530);
  text(actor.toString(), 180, 580);
}

void enterName(Actor actor) {
  if (!nameEntered) {
    
    if (key == '\n' || key == '\r') {
      actor.name = new String(name);
      nameEntered = true;
      
    } else if (key == '\b' || int(key) == 127) {
      if (name.length > 0) {
        name = shorten(name);
      }
    } else {
      name = append(name, key);
    }
  }
}