// Instructions: mouseX controls the size of the pixels
PImage img;
float s= 20;
int x;
int y;
void setup() {
   size(882,1103);
  background(0);
  noStroke();
  img = loadImage("portrait2.jpg");
}


void draw() {
  background(0);
  s = map(mouseX, 0, width, 2, 50);
  // Take a sample of pixels and draw them as large rectangles above the image
  for(x = 0; x < img.width; x += s) {
    for(y = 0; y < img.height; y += s) {
      color fc= img.get(x, y);
      fill(fc);
      stroke(fc);
      ellipse(x + random(-2, 2), y + random(-2, 2), s,s+5);
    }
  }
  saveFrame();
}
