void setup(){


size(600,600);
background(0);
}
void draw(){
stroke(255);
for(int i=0;i<1000;i=i+1){
  star(random(0,600),random(0,600));
}
}
void star(int x, int y){
  pushMatrix();
  translate(x,y);
  circle(0,0,random(1,10));
  popMatrix();
}
