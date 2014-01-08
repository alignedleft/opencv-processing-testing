import gab.opencv.*;
import processing.video.*;



Capture video;
OpenCV opencv;



void setup() {
  size(640, 480);

  //Uncomment the below line for some interesting, unintended visuals
  //colorMode(HSB, 100);

  video = new Capture(this, 640, 480);
  opencv = new OpenCV(this, video, false);

  video.start();
}



void draw() {
  opencv.loadImage(video);
  image(opencv.getSnapshot(), 0, 0);
}



void captureEvent(Capture c) {
  c.read();
}



