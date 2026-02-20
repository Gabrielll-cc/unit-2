//gabriel

int x,y,a,b;

void setup(){
  size(600,600);
  x=100;
  y=100;
  a=100;
  b=150;
}
  
void draw(){
  background(255);
  rect(x,y,a,b);
  x=x+5;
  y=y+3;
  if(x>600){
    x=-100;
  }
  if(y>600){
    y=-100;
  }
  
}
  
