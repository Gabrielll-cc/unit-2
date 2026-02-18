//gabriel

int x,y;

void setup(){
  size(600,600);
  x=0;
  y=600;
}
  
void draw(){
  background(255);
  ellipse(250,x,100,100);
  x=x+5;
  if(x>650){
    x=-50;
  }
  ellipse(350,y,100,100);
  y=y-5;
  if(y<-50){
    y=650;
  }
}
