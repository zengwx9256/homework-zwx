int bgWidth = 800;
int bgHeight = 800;
float lineSize = 0;
float colSize = 0;
color[] colors = {#5034F5, #E30909, #FCF905, #0000ff, 0};

void mondrianStyle() {
  for(int line = 0; line < bgHeight; line += lineSize + 2) {
    lineSize = random(4, bgWidth/2);
    for(int col = 0; col < bgWidth; col += colSize + 2) {
      colSize = random(4, bgHeight/2);

      color rectColor = colors[int(random(colors.length))];
      fill(rectColor);
      rect(col, line, colSize, lineSize);

      strokeWeight(2);
      stroke(0);
      float x = col+colSize;
      float y = line+lineSize;
      line(0, y, bgWidth, y);
      line(x, line, x, y);
    }
  }
}

void setup() {
  size(800,800);
  background(#ffffff);
  mondrianStyle(); 
  //First run
}

void draw() {
  if (mousePressed){
        mondrianStyle();
         save("mondarian.tif");
  }
}
