//gabriel

int x,y;

void setup(){
  size(600,600);
  x=0;
}
  
void draw(){
  background(255);
  ellipse(x,300,100,100);
  x=x+5;
  if(x>650){
    x=-50;
  }
}
