//gabriel


int X,Y;
void setup() {
  size(600,600);
  Y=300;
  X=-101; //set the starting value
} // -----end of setup-----

void draw() {
  background(200);
  ellipse(X,Y,200,200);
  X=X+5;
  if (X>700) {
  X=-100;
  }
} // -----end of draw------
