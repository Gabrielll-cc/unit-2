//gabriel

int y;

void setup(){
  size(600,600);
  y=0;
}
  
void draw(){
  background(255);
  ellipse(300,y,100,100);
  y=y+5;
  if(y>650){
    y=-50;
  }
}
