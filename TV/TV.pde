float x = 150;
float y = 485;
float w = 50;
float h = 50;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  fill(#602c1a);
  rect (70, 70, 460, 460);
  noFill();
  
  fill(#eaf2ff);
  rect(100, 100, 400, 340, 40);
  noFill();
  
  fill(255);
  ellipse(x, y, w, h);
  noFill();
}