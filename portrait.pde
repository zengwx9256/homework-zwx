PImage img;
float x;
int sd=5;

void setup(){
size(914,914);
background(0);
x = width;
frameRate(16);
img = loadImage("portrait.jpg");
}

void draw(){
image(img,0,0);
background(#142C67);
for(int i=0;i<width;i+=sd){
  for(int j=0;j<height;j+=sd){

color fc= img.get(i,j);
fill(fc);
stroke(fc);
ellipse(i,j, 50, 50);
}
}
}
void keyPressed() {
  if (key == 'a') {
    setup();
    sd=sd+5;
;
  }
  if (key == 'z') {
    setup();
   sd=sd-5;
;
  }
saveFrame();}
