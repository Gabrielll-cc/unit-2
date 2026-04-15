//Gabriel

float a;
int b,c,d,e;
float z,y,x;
float S,E;
int mode=0;
float sliderY;
boolean dragging=false;

void setup(){
  size(600,600);
  background(255);
  a=100;
  b=70;
  c=70;
  d=70;
  S=1;
  e=50;
  sliderY=150;
}

void draw(){
  fill(255);
  noStroke();
  rect(0,0,45,height);
  stroke(0);
      line(20,100,20,300);
  if(dragging){
    sliderY=constrain(mouseY,100,300);
  }
  circle(20,sliderY,30);
  S=map(sliderY,100,300,1,50);
  E=map(sliderY,100,300,1,100);
  
  fill(255);
  stroke(0);
  strokeWeight(1);
  rect(100,50,20,300);
  noFill();
  rect(200,50,350,350);

    if(mousePressed&&mouseX>200&&mouseX<550&&mouseY>50&&mouseY<400){
      if(mode==0){
    stroke(x,y,z);
    strokeWeight(S);
      }else{
        stroke(255);
        strokeWeight(E);
      }
    line(pmouseX,pmouseY,mouseX,mouseY);
    }

    stroke(0);
    strokeWeight(1);
  RE(100,b);
  z=b-50;
  if(mousePressed&&mouseX<120&&100<mouseX){
    b=mouseY;
    if(b>330){
      b=330;
    }
    if(b<50){
      b=50;
    }
  }
  rect(150,50,20,300);
  RE(150,c);
  y=c-50;
  if(mousePressed&&mouseX<170&&150<mouseX){
    c=mouseY;
    if(c>330){
      c=330;
    }
    if(c<50){
      c=50;
    }
  }
    rect(50,50,20,300);
  RE(50,d);
  x=d-50;
  if(mousePressed&&mouseX<70&&50<mouseX){
    d=mouseY;
    if(d>330){
      d=330;
    }
    if(d<50){
      d=50;
    }
  }
    fill(x,y,z);
  rect(50,400,120,20);
}
  void mouseReleased(){
    if(mouseX<120&&100<mouseX){
    b=mouseY;
    if(b>330){
      b=330;
    }
    if(b<50){
      b=50;
    }
  }
 
  if(mouseX<170&&150<mouseX){
    c=mouseY;
    if(c>330){
      c=330;
    }
    if(c<50){
      c=50;
    }
  }

  if(mouseX<70&&50<mouseX){
    d=mouseY;
    if(d>330){
      d=330;
    }
    if(d<50){
      d=50;
    }
  }
  dragging=false;
  }
void RE(int x,int y){
  fill(255);
  pushMatrix();
  translate(x,y);
  fill(0);
  rect(0,0,20,20);
  fill(255);
  line(0,5,20,5);
  line(0,10,20,10);
  line(0,15,20,15);
  popMatrix();
}

void keyPressed(){
  if (key=='s'){
    mode=0;
  }else if(key=='e'){
    mode=1;
  }
}
void mousePressed(){
  if(dist(mouseX,mouseY,20,sliderY)<15){
    dragging=true;
  }
}
