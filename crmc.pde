int starCount;
float[]starX,starY,starSize,starAlpha;

float meteorX,meteorT;
boolean meteorSpeed=8;

float houseBrightness=30;
float targetBrightness=30;

void setup(){
  size(800,800);
  
  starCount=int(random(80,150));
  starX=new float[starCount];
  starY=new float[starCount];
  starSize=new float[starCount];
  starAlpha=new float[starCount];
  
  for(int i=0;i<starCount;i++){
    starX[i]=random(width);
    starY[i]=random(height*0.7);
    starSize[i]=random(1,3);
    starAlpha[i]=random(100,255);
  }
}


void draw(){
  drawGradient();
  
  drawStars();
  
  drawMeteor();
  
  drawHouse();
  
  updateHouseBrightness();
}

void drawGradient(){
  for(int y=0;y<height;y++){
    float inter=map(y,0,height,0,1);
    color c=lerpColor(color(100,150,255),color(5,5,30),inter);
    stroke(c);
    line(0,y,width,y);
  }
}

void drawStars(){
  noStroke();
  for(int i=0;i<starCount;i++){
    fill(255,starAlpha[i]);
    ellipse(starX[i],starY[i],starSize[i],starSize[i]);
    
    starAlpha[i]+=random(-5,5);
    starAlpha[i]=constrain(starAlpha[i],100,255);
  }
}

void drawMeteor(){
  if(!meteorActive&&random(1)<0.005){
    meteorActive=true;
    meteorX=random(width);
    meteorY=random(height*0.3);
  }
  
  if(meteorActive){
    stroke(255);
    strokeWeight(2);
    line(meteorX,meteorY,meteorX-20,meteorY-10);
    
    meteor+=meteorSpeed;
    meteorY+=meteorSpeed*0.5;
    
    if(meteorX>width||meteorY>height){
      meteorActive=false;
    }
  }
}
