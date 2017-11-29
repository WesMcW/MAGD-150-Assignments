class Ball {


  float x, y, radius, xSpeed, ySpeed, xDir, yDir;
  color fill;



  Ball() {

    this(random(50, width - 30), 
      random(30, height - 30), 
      random(5, 30));
  }

  Ball(float x, float y, float radius) {

    this.x = x;
    this.y = y;
    this.radius = radius;

    xSpeed = random(1, radius / 5.0);
    ySpeed = random(1, radius / 5.0);

    float theta = random(TWO_PI);
    xDir = cos(theta);
    yDir = sin(theta);

    fill = color(90); 
  }

  void draw() {
    Bounce();      // "Bounce" is the function that prevents the snow from exiting the window.

    pushStyle();
    noStroke();
    ellipseMode(RADIUS);

    fill(fill);
    ellipse(x, y, radius, radius);

    fill(#edfffe);
    ellipse(x, y, radius * 1 / 4.0, radius * 1 / 4.0);
    popStyle();
  }

  void Bounce() {  

    x += xSpeed * xDir;
    y += ySpeed * yDir;

    if (x - radius < 0 || x + radius > width) {
      xDir *= -1;
    }
    if (y - radius < 0 || y + radius > height) {
      yDir *= -1;
    }
  }
}