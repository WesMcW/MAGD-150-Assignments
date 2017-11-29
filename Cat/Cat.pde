//Grass image from http://moziru.com/explore/Grass%20clipart%20transparent%20background/
//Roar sound from https://www.freesoundeffects.com/free-sounds/tiger-10060/

PFont f;
PImage img;
import processing.video.*;    //These import the Video and Sound into the memory.
import processing.sound.*;

Movie movie;
SoundFile roar;

void setup() {
  surface.setTitle("On the Hunt for The Wild Beast");
  size(1080, 1000);
  f = createFont("X-Files", 100);
  movie = new Movie(this, "Cat.mov");
  movie.play();
  movie.loop();    //Keeps the video running continuously.
  movie.volume(0);      // Removes the sound that was in the original video.
  img = loadImage("Grasss.png");
  roar = new SoundFile(this, "Roar.mp3");
  roar.rate(.7);    // Slows down the speed of the roar.
  roar.loop();      // Tells the program to loop the roar sound.
}

void draw() {

  movie.read(); 
  
  image(movie, 0, 0);
  filter(INVERT);      // Inverts the colors in the video added above.
  image(img, -50, 400, 1200, 800);
  
  fill(161, 33, 33, 150);
  textFont(f);
  text("BEWARE", 350, 80);
}