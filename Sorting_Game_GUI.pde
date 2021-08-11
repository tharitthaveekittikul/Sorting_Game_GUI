//char p0_0 = 'A',p0_1 = 'B',p0_2 = 'C',p0_3 = 'D',
//     p1_0 = 'E',p1_1 = 'F',p1_2 = 'G',p1_3 = 'H',
//     p2_0 = 'I',p2_1 = 'J',p2_2 = 'K',p2_3 = ' ';
     
String board[][] = {{"A","B","C","D"},{"E","F","G","H"},{"I","J","K"," "}};
String character[] = {"A","B","C","D","E","F","G","H","I","J","K"," "};
void setup(){
  size(500,500);
  textSize(100);
  random_board();
}

void draw(){
  // rect 1st row
  // p0_0
  fill(255);             // while color
  rect(10,10,120,160);   // rect(x,y,w,h)
  fill(0);               // black color for text
  text(board[0][0],35,120);     // text(text,x,y)
  
  // p0_1
  fill(255);
  rect(130,10,120,160);
  fill(0);
  text(board[0][1],155,120);
  
  // p0_2
  fill(255);
  rect(250,10,120,160);
  fill(0);
  text(board[0][2],275,120);
  
  // p0_3
  fill(255);
  rect(370,10,120,160);
  fill(0);
  text(board[0][3],395,120);
  
  // rect 2nd row
  // p1_0
  fill(255);
  rect(10,170,120,160);
  fill(0);
  text(board[1][0],35,280);
  
  // p1_1
  fill(255);
  rect(130,170,120,160);
  fill(0);
  text(board[1][1],155,280);
  
  // p1_2
  fill(255);
  rect(250,170,120,160);
  fill(0);
  text(board[1][2],275,280);
  
  // p1_3
  fill(255);
  rect(370,170,120,160);
  fill(0);
  text(board[1][3],395,280);
  
  // rect 3rd row
  // p2_0
  fill(255);
  rect(10,330,120,160);
  fill(0);
  text(board[2][0],35,440);
  
  // p2_1
  fill(255);
  rect(130,330,120,160);
  fill(0);
  text(board[2][1],155,440);
  
  // p2_2
  fill(255);
  rect(250,330,120,160);
  fill(0);
  text(board[2][2],275,440);
  
  // p2_3
  fill(255);
  rect(370,330,120,160);
  fill(0);
  text(board[2][3],395,440);
}

void random_board(){
  StringList boardStr = new StringList(13);
  for (int i = 0; i < 12; i++){
  boardStr.append(character[i]);
  }
  boardStr.shuffle();
  print(boardStr);
  String rd_board[] = boardStr.array();
  int s = 0;
  for (int i = 0; i < 3; i++){
    for (int j = 0; j < 4; j++){
      board[i][j] = rd_board[s];
      s += 1;
    }
  }
}
