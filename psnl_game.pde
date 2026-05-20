int mode;
int start=0;
int play=1;
int end=2;


void setup(){
  mode=0;
  size(1000,1000);
  
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
  if(mode==0){
    START();
  }
}
  
