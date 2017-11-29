void setup(){
  size(600, 600);
  background(#f7ac76);
  noStroke();
}

void draw(){
  fill(#602c1a);
  rect (70, 70, 460, 460);
  noFill();
  fill(#eaf2ff);
  rect(100, 100, 400, 340, 40);
  noFill();
  Circle();
  Rect();
  Circle1();
  textSize(15);
  fill(#26ffaf);
  text("v PRESS v", 116, 456);
  text("^ PRESS ^", 411, 525);
  noFill();
  
}

void Rect(){
  float x = 420;
  float y = 460;
  float w = 50;
  float h = 50;
  rect(x,y,w,h);
  fill(255);
  if(mousePressed){
    if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
      println(" co0l button ");
      fill(200, 52, 100);
    }
  }
}

void Circle(){
  float x1 = 150;
  float y1 = 485;
  float w1 = 50;
  float h1 = 50;
  ellipse(x1, y1, w1, h1);
  fill(255);
  if(mousePressed){
    if(mouseX>x1 && mouseX <x1+w1 && mouseY>y1 && mouseY <y1+h1){
      println(" That one button ");
      fill(100, 25, 200);
    }
  }
}

void Circle1(){
  float x1 = 150;
  float y1 = 485;
  float w1 = 50;
  float h1 = 50;
  ellipse(x1, y1, w1, h1);
  fill(255);
  if(mousePressed){
    if(mouseX>x1 && mouseX <x1+w1 && mouseY>y1 && mouseY <y1+h1){
      fill(100, 25, 200);
    }
  }
}