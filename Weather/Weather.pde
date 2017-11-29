Ball[] ws;    // Calls multiple objects from the class, opposed to calling
int count;    // just one from the class.

void setup() {
  size(500, 500);
  background(32);
  colorMode(HSB, 359, 99, 99);
  noStroke();
  
  count = max(width, height) / 7;
  ws = new Ball[count];                // Calls for more than just one ball
  for(int x = 0; x < count; ++x) {
    ws[x] = new Ball();
  }
}

void draw() {
  
  fill(0, 0, 24, 24);
  rect(0, 0, width, height);
  
  for(int i = 0; i < count; ++i) {
    ws[i].draw();
  }
  
 Moon();    // "Moon" is what places the rock in the sky.
 
  fill(#edfffe);
  ellipse(250, 650, 700, 500);
  noFill();
  
  Guy();   // "Guy" is the function which creates the snow man.
  
  Hat();   // "Hat" is a function that makes an accessory for the Guy function.
}
  

void Guy() {
  stroke(200);
  fill(#f9fffe);
  ellipse(250, 400, 50, 40);
  ellipse(250, 380, 42, 40);
  ellipse(250, 362, 32, 30);
  fill(1);
  ellipse(245, 358, 3, 3);
  ellipse(255, 358, 3, 3);
  fill(#ff9e21);
  ellipse(255, 364, 10, 3);
  noStroke();
}

void Hat() {
  fill(1);
 rect(235, 347, 30, 5);
 rect(240, 329, 20, 20);
 fill(#f44141);
 rect(240, 342, 20, 5);
 fill(#f4b942);
 rect(248, 342, 5, 5);
}

void Moon() {
  fill(#8e8e8e);
 ellipse(450, 50, 150, 150);
 noFill();
  
  fill(#545454);
 ellipse(420, 60, 10, 10);
 ellipse(410, 20, 10, 10);
 ellipse(460, 90, 20, 15);
 ellipse(460, 30, 20, 20);
}