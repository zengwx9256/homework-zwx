float yoff = 0.0;        
float h = 0;


void setup() {
  size(800, 800);
  colorMode(HSB, 100, 100, 100, 100 );
  frameRate(1);
}

void draw() {
  background(#04036A);
  for (int i=0; i<100; i++) {
    //background(0, 0, 100);
    noStroke();
    fill(50, 0, 0, 2);
    rect(0, 0, width, height);

    h+= .8;
    if ( h >100) {
      h=0;
    }

    noFill();
    stroke(h, 100, 100);
    strokeWeight(1);

    beginShape(); 
    float xoff = 5;  

    for (float x = 0; x <= width; x += 1) {
      float y = map(noise(xoff, yoff), 0, 1, 0, height )*1.2 -25; 
      vertex(x, y); 
      xoff += 0.01;
    }
    yoff += 0.01;
    endShape();
  }

  fill(0);
  textSize(20);
  textAlign(CENTER);
}
import processing.pdf.*;

PGraphics pdf = createGraphics(300, 300, PDF, "output.pdf");
pdf.beginDraw();
pdf.background(128, 0, 0);
pdf.line(50, 50, 250, 250);
pdf.dispose();
pdf.endDraw();
