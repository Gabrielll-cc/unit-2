//gabriel

int d;

void setup(){
  size(600,600);
  d=0;
}
  
void draw(){
  background(255);
  ellipse(300,300,d,d);
  d=d+5;
  if(d>650){
    d=0;
  }
}
