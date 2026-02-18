//gabriel

int x,y;

void setup(){
  size(600,600);
  x=0;
  y=0;
}
  
void draw(){
  background(255);
  ellipse(y,x,100,100);
  x=x+5;
  y=y+5;
  if(x>650){
    x=-50;
  }
  if(y>650){
    y=-50;
  }
}
