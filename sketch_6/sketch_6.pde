//gabriel

int d,y;

void setup(){
  size(600,600);
  d=0;
  y=0;
}
  
void draw(){
  background(255);
  ellipse(y,300,d,d);
  d=d+1;
  y=y+5;
  if(d>132){
    d=0;
  }
  if(y>650){
    y=-50;
  }
}
