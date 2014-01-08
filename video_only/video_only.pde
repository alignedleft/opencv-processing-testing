import processing.video.*;



Capture video;



void setup() {
  size(640, 480);
  
  video = new Capture(this, 640, 480);
  video.start();
}



void draw() {
  image(video, 0, 0);
}



void captureEvent(Capture c) {
  c.read();
}



