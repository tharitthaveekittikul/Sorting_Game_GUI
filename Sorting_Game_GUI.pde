char p0_0 = 'A',p0_1 = 'B',p0_2 = 'C',p0_3 = 'D',
     p1_0 = 'E',p1_1 = 'F',p1_2 = 'G',p1_3 = 'H',
     p2_0 = 'I',p2_1 = 'J',p2_2 = 'K',p2_3 = ' ';

void setup(){
  size(500,500);
  textSize(100);
}

void draw(){
  // rect 1st row
  // p0_0
  fill(255);             // while color
  rect(10,10,120,160);   // rect(x,y,w,h)
  fill(0);               // black color for text
  text(p0_0,35,120);     // text(text,x,y)
  
  // p0_1
  fill(255);
  rect(130,10,120,160);
  fill(0);
  text(p0_1,155,120);
  
  // p0_2
  fill(255);
  rect(250,10,120,160);
  fill(0);
  text(p0_2,275,120);
  
  // p0_3
  fill(255);
  rect(370,10,120,160);
  fill(0);
  text(p0_3,395,120);
  
  // rect 2nd row
  // p1_0
  fill(255);
  rect(10,170,120,160);
  fill(0);
  text(p1_0,35,280);
  
  // p1_1
  fill(255);
  rect(130,170,120,160);
  fill(0);
  text(p1_1,155,280);
  
  // p1_2
  fill(255);
  rect(250,170,120,160);
  fill(0);
  text(p1_2,275,280);
  
  // p1_3
  fill(255);
  rect(370,170,120,160);
  fill(0);
  text(p1_3,395,280);
  
  // rect 3rd row
  // p2_0
  fill(255);
  rect(10,330,120,160);
  fill(0);
  text(p2_0,35,440);
  
  // p2_1
  fill(255);
  rect(130,330,120,160);
  fill(0);
  text(p2_1,155,440);
  
  // p2_2
  fill(255);
  rect(250,330,120,160);
  fill(0);
  text(p2_2,275,440);
  
  // p2_3
  fill(255);
  rect(370,330,120,160);
  fill(0);
  text(p2_3,395,440);
}
