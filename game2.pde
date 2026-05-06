//game
int mode=0;
int ChaX=20;
float x1=20,y1=20;
float b1,b2;
float s=7;


void setup(){
  size(600,400);
}

void draw(){
  background(155);
  BG(0,300);
  rect(x1,y1,30,30);
  if(mode==0){
  y1=y1+s;
  if(y1>270){
    s=0;
  } 
}
}



void BG(int x,int y){
  stroke(0);
  pushMatrix();
  translate(x,y);
  line(0,0,600,0);
  popMatrix();
}

void keyPressed(){
  mode=1;
  if(key=='d'){
    x1=x1+5;
  }
  if(key=='a'){
    x1=x1-5;
  }
  if(key=='w'){
    y1=y1-10;
  }
}

void keyReleased(){
  mode=0;
}
