//gabriel
//project2
//feb,23

//monster
int doX, a;
void setup() {
  size(600, 600);
  doX=0;
  a=5;
}


void draw() {
  background(225);
  DO(0,0);
  DO(doX, 150);
  doX=doX+a;
  if (doX>200) {
    a=-5;
  }
  if (doX<-200) {
    a=5;
  }
}

void DO(int x, int y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(3);
  pushMatrix();
  translate(385, 217);
  rotate(radians(45));
  fill(#6AACFA);
  ellipse(0, 0, 20, 70);
  fill(255);
  popMatrix();

  circle(400, 200, 25);

  pushMatrix();
  translate(225, 260);
  rotate(radians(15));
  fill(#6AACFA);
  ellipse(0, 0, 20, 70);
  fill(255);
  popMatrix();

  circle(210, 285, 25);
  fill(#6AACFA);
  ellipse(300, 150, 190, 190);

  fill(#6AACFA);
  ellipse(268, 255, 80, 140);
  ellipse(332, 255, 80, 140);
  fill(255);
  ellipse(300, 170, 155, 150);
  fill(#6AACFA);
  noStroke();
  rect(245, 225, 110, 15);
  stroke(0);
  fill(255);

  circle(300, 260, 90);

  circle(300, 260, 60);
  noStroke();
  rect(269, 230, 63, 30);
  stroke(0);
  fill(#F7E76B);
  circle(300, 235, 32);
  fill(255);

  line(270, 258, 330, 258);

  rect(235, 306, 130, 20);
  circle(367, 316, 20);
  circle(233, 316, 20);
  noStroke();
  ellipse(361, 316.5, 30, 17.5);
  ellipse(239, 316.5, 30, 17.5);
  stroke(0);

  ellipse(280, 100, 40, 45);
  ellipse(320, 100, 40, 45);
  fill(0);
  circle(287, 105, 15);
  circle(313, 105, 15);
  fill(#F76E61);
  circle(300, 130, 25);
  fill(255);
  arc(300, 166, 120, 50, 0, PI);
  line(300, 143, 300, 190);
  line(280, 140, 230, 120);
  line(277, 150, 220, 150);
  line(280, 160, 225, 180);

  line(320, 140, 370, 120);
  line(323, 150, 380, 150);
  line(320, 160, 375, 180);

  fill(#F76E61);
  rect(232, 215, 137, 10);
  line(300, 308, 300, 326);
  fill(0);
  circle(300, 237, 13);
  line(300, 237, 300, 250);
  popMatrix();
}
