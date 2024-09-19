void setup() {
  size(400, 400);
  background(182, 149, 196);
  noLoop();
}
void draw(){
 
  for (int y = 380; y > -15; y = y - 35){
     for(int x = 15; x < 415; x = x + 30){
 scale(x,y);
  }
  }
}

void scale (int x, int y){
   noStroke();
  //base
  fill(214,155,224);
  ellipse(x,y,30,40);
  //bottom
  beginShape();
  curveVertex(x - 15,y + 15);
  curveVertex(x-10, y + 17);
  curveVertex(x, y + 27);
  curveVertex(x + 10, y + 17);
  curveVertex(x + 15, y + 15);
  endShape();
  //width
  if(Math.random()<0.5){
    stroke(0,0,0);
  }else{
    noStroke();
  }
  ellipse (x,y + 10,35,20);
  
    //middle elipse
  stroke(0,0,0);
  ellipse(x,y,15,40);
  //ombre ellipses
  noStroke();
  fill(82,42,78);
  ellipse(x,y - 5,30,30);
  if(Math.random()<0.5){
  fill(110,67,105);
  }else{
    fill(151,84,117);
  }
  ellipse(x,y - 10,30,15);
}



