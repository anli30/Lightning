int startX = 50;
int startY = 250;
int clickNum = 0;

void setup(){
  size(600,400);
  background(0);
  noLoop();
}

void draw(){
  background(0);
  magicW();
  while(startX < 300){
    stroke(#F56DEC);
    strokeWeight(3);
    int endX = startX + ((int)(Math.random()*9)+ 1);
    int endY = startY + ((int)(Math.random()*18)-9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  if(clickNum % 2 == 0){
    ghost();
  }else{
    cover();
  }
}

void mousePressed(){
  startX = 50;
  startY = 250;
  clickNum = clickNum + 1;
  redraw();
}

//this function creates a magic wand
void magicW(){
  strokeWeight(8);
  stroke(#CFB6F7);
  line(0,350,50,250);
}

//this function creates the ghost
void ghost(){
  fill(255);
  noStroke();
  //head of ghost
  ellipse(400,100,99,100);
  //body of ghost
  fill(255);
  rect(351,90,98,100);
  //feet of ghost
  feet(368);
  feet(401);
  feet(432);
  //eye of ghost
  eye(375,100);
  eye(425,100);
}

//creates the feet of ghost
void feet(int x){
  fill(255);
  noStroke();
  ellipse(x,185,35,35);
}

void eye(int x, int y){
  fill(0);
  ellipse(x,y,15,15);
}

//tis makes the ghost disappear
void cover(){
  fill(#7B9BEA);
  rect(350,500,100,150);
}