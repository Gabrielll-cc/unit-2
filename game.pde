//game
int mode=0;
int ChaX=20;





void setup(){
  size(600,400);
}

void draw(){
  background(155);
  BG(0,300);
  Charactor(ChaX,260);
}

void Charactor(int x, int y){
  pushMatrix();
  translate(x,y);
  if(mode==1){
    circle(0,0,20);
  rect(-10,10,14,17);
  rotate(radians(-45));
  rect(-12,10,4,15);
  translate(-18,-10);
  rect(-7,28,6,15);
  translate(30,25);
  rotate(radians(90));
  rect(1,28,6,15);
  popMatrix();
  }else{
  circle(0,0,20);
  rect(-7,10,14,17);
  rect(-12,10,4,15);
  rect(8,10,4,15);
  rect(-7,28,6,15);
  rect(1,28,6,15);
  popMatrix();
}
}

void BG(int x,int y){
  pushMatrix();
  translate(x,y);
  line(0,0,600,0);
  popMatrix();
}

void keyPressed(){
  if(key=='d'){
    ChaX=ChaX+5;
    mode=1;
  }
}
