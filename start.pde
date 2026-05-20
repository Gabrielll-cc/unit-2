int starCount;
float[]starX,starY,starSize,starAlpha;

void START(){
    for(int y=0;y<height;y++){
    float inter=map(y,0,height,0,1);
    color c=lerpColor(color(100,150,255),color(5,5,30),inter);
    stroke(c);
    line(0,y,width,y);
  }
    noStroke();
  for(int i=0;i<starCount;i++){
    fill(255,starAlpha[i]);
    ellipse(starX[i],starY[i],starSize[i],starSize[i]);
    
    starAlpha[i]+=random(-5,5);
    starAlpha[i]=constrain(starAlpha[i],100,255);
  }
}
