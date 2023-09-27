int i;
int j;

void setup(){
size(800,800);
background(#3117CE);
frameRate(5);
}
void draw(){
for(int i=0;i<10;i++){
for(int j=0;j<10;j++){
  fill(random(0,255),random(0,255),random(0,255));
stroke(255);
strokeWeight(10);
rect(80*i,80*j,50,50);}
}
}
