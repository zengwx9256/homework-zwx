float count = 0;
void setup() {
  size(450, 600); 
  frameRate(3);
}
void draw() {
  background(0);
  ellipseMode(CENTER);
  rectMode(CENTER);
  strokeWeight(3);
  stroke(#0A03FF);
  line(329, 140, 291, 91);
  line(291, 91, 217, 91);
  line(217, 91, 141, 91);
  line(141, 91, 91, 141);
  line(91, 141, 91, 241);
  line(91, 241, 341, 341);
  line(341, 341, 341, 441);
  line(341, 441, 291, 491);
  line(291, 491, 141, 491);
  line(141, 491, 91, 441);
  
  for (int i = 0; i<100; i+=2) {
    float co= count+=10;
    noFill();
    pushMatrix(); 
    translate(329, 140);
    rotate(co);
    stroke(255-i,100+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix(); 

    pushMatrix(); 
    translate(291, 91);
    rotate(co);
    stroke(230-i,120+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();

    pushMatrix(); 
    translate(217, 91);
    rotate(co);
    stroke(210-i,130+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();

    pushMatrix(); 
    translate(141, 91);
    rotate(co);
    stroke(190-i,140+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();
    
    pushMatrix(); 
    translate(91, 141);
    rotate(co);
    stroke(180-i,150+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();
    
    pushMatrix(); 
    translate(217, 290);
    rotate(co);
    stroke(170-i,160+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();
    
    pushMatrix(); 
    translate(91, 241);
    rotate(co);
    stroke(160-i,170+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();
    
    pushMatrix(); 
    translate(341, 341);
    rotate(co);
    stroke(150-i,80+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();
    
    pushMatrix(); 
    translate(341, 441);
    rotate(co);
    stroke(140-i,90+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();
    
    pushMatrix(); 
    translate(291, 491);
    rotate(co);
    stroke(130-i,100+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();
    
    pushMatrix(); 
    translate(141, 491);
    rotate(co);
    stroke(120-i,110+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();
    
    pushMatrix(); 
    translate(217, 491);
    rotate(co);
    stroke(110-i,120+i,235-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();
    
    pushMatrix(); 
    translate(91, 441);
    rotate(co);
    stroke(100-i,130+i,255-i, 90+i);
    rect(0, 0, 15+i, 15+i);
    popMatrix();
   
  }
  saveFrame(); 
}
