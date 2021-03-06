import java.util.Arrays;

String board[][] = {{"A","B","C","D"},{"E","F","G","H"},{"I","J","K"," "}};
String save_board[] = {"A","B","C","D","E","F","G","H","I","J","K"," "};
String sorted_board[][] = {{"A","B","C","D"},{"E","F","G","H"},{"I","J","K"," "}};
XML xml;
void setup(){  
  size(500,500);
  textSize(100);
  load_game();
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
  switch_position();
  check_winner();
  
}

void random_board(){
  String character[] = {"A","B","C","D","E","F","G","H","I","J","K"," "};
  StringList boardStr = new StringList(13);
  for (int i = 0; i < 12; i++){
  boardStr.append(character[i]);
  }
  boardStr.shuffle();
  //print(boardStr);
  String rd_board[] = boardStr.array();
  int s = 0;
  for (int i = 0; i < 3; i++){
    for (int j = 0; j < 4; j++){
      board[i][j] = rd_board[s];
      s += 1;
    }
  }
}

void switch_position(){
  String temp = "X";
  int mY = mouseX / 120;
  int mX = mouseY / 160;
  if(mousePressed){
    try{
      if(mX+1 <= 2 && board[mX+1][mY].equals(" ")){
        temp = board[mX][mY];
        board[mX][mY] = board[mX+1][mY];
        board[mX+1][mY] = temp;
      }
      else if(mX-1 >= 0 && board[mX-1][mY].equals(" ")){
        temp = board[mX][mY];
        board[mX][mY] = board[mX-1][mY];
        board[mX-1][mY] = temp;
      }
      
      else if(mY+1 <= 3 && board[mX][mY+1].equals(" ")){
        temp = board[mX][mY];
        board[mX][mY] = board[mX][mY+1];
        board[mX][mY+1] = temp;
      }
      
      else if(mY-1 >= 0 && board[mX][mY-1].equals(" ")){
        temp = board[mX][mY];
        board[mX][mY] = board[mX][mY-1];
        board[mX][mY-1] = temp;
      }
      save_game();
    }
    
    catch(Exception e){
      
    }
  }
}

void check_winner(){
  if(Arrays.deepEquals(board,sorted_board)){
    fill(255);
    rect(0,0,500,500);
    fill(0);
    text("WIN!!",130,250);
    if(mousePressed){
      exit();
    }
  }
}

void save_game(){
  //String s =  "<sorting_game><Map><row1>ABCD</row1><row2>EFGH</row2><row3>IJK </row3></Map></sorting_game>";
  int k = 0;
  for(int i = 0 ; i < 3; i++){
    for(int j = 0; j < 4; j++){
      save_board[k] = board[i][j];
      k++;
    }
  }
  String xml_board = "";
  xml_board = xml_board + "<sorting_game>";
  xml_board = xml_board + "<Map>";
  xml_board = xml_board + "<row1>" + save_board[0] + save_board[1] + save_board[2] + save_board[3] +"</row1>";
  xml_board = xml_board + "<row2>" + save_board[4] + save_board[5] + save_board[6] + save_board[7] +"</row2>";
  xml_board = xml_board + "<row3>" + save_board[8] + save_board[9] + save_board[10] + save_board[11] +"</row3>";
  xml_board = xml_board + "</Map>";
  xml_board = xml_board + "</sorting_game>";  
  XML xmlsave = parseXML(xml_board);
  saveXML(xmlsave,"save.xml");
  
}

void load_game(){
  try{
    xml = loadXML("save.xml");
    XML[] save_board = xml.getChildren("Map");
    for(int i = 0; i < 3; i++){
      XML[] xml_board = save_board[0].getChildren("row" + String.valueOf(i+1));
      String[] content = xml_board[0].getContent().split("");
      for(int j = 0; j < 4; j++){
        board[i][j] = content[j];
      }      
    }
    if(Arrays.deepEquals(board,sorted_board)){
      random_board();
    } 
  }
  catch(Exception e){
    random_board();
    save_game();
  }
}
