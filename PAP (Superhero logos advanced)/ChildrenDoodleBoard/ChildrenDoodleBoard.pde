// 0 --> BLACK
// 1 --> RED
// 2 --> BLUE
// 3 --> YELLOW 
// 4 -->  WHITE
// 5 --> BROWN
// 6 --> GREEN 
// 7 --> ORANGE
// 8 --> GREY
// 9 --> PURPLE
//10 --> PINK

FreePlayMode freePlay;
GenerateMode generate;
boolean generateMode = false;
boolean freePlayMode = false;
boolean gameModeAlreadyChosen = false;

void setup() {
  size(700, 700);
  //backToNormal();
  updateBackground();
  generate = new GenerateMode();
  //drawBlankGrid();
}

void draw() {
  if(freePlayMode==true){
    
  background(#f1f1f1);

  float tileW = width/freePlay.amount; 
  float tileH = height/freePlay.amount; 
  noStroke();
  ellipseMode(CORNER);
  
  // Check where the mouse is
  freePlay.mx = int(map(mouseX, 0, width, 0, freePlay.amount));
  freePlay.my = int(map(mouseY, 0, height, 0, freePlay.amount));
  
  // Draw the visual
  
  for (int x = 0; x < freePlay.amount; x++) {
    for (int y = 0; y < freePlay.amount; y++) {
      // 0 --> BLACK
      // 1 --> RED
      // 2 --> GREEN
      // 3 --> BLUE
      // 4 --> YELLOW
      // 5 --> BROWN
      // 6 --> WHITE
      // 7 --> ORANGE
      // 8 --> GREY
      if (freePlay.state[x][y] == 0) {
        fill(#000000);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        stroke(0,255,255);
        line(70,70,50,150);
        popMatrix();
      } else if (freePlay.state[x][y] == 1) {
        fill(#FF0000);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        stroke(0,255,255);
        line(70,70,50,150);
        popMatrix();
      } else if (freePlay.state[x][y] == 2) {
        fill(#0000FF);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        stroke(0,255,255);
        line(70,70,50,150);
        popMatrix();
      } else if (freePlay.state[x][y] == 3) {
        fill(#FFFF00);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        stroke(0,255,255);
        line(70,70,50,150);
        popMatrix();
      } else if (freePlay.state[x][y] == 4) {
        fill(#FFFFFF);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        stroke(0,255,255);
        line(70,70,50,150);
        popMatrix();
      }       
      }
    }
    //freePlay.mouseReleased(); //for personal use!
    //freePlay.mouseReleased();
  }
  else if(generateMode==true) {
    
    background(#f1f1f1);

  float tileW = width/generate.amount; 
  float tileH = height/generate.amount; 
  noStroke();
  ellipseMode(CORNER);
  
  // Check where the mouse is
  generate.mx = int(map(mouseX, 0, width, 0, generate.amount));
  generate.my = int(map(mouseY, 0, height, 0, generate.amount));
  
  // Draw the visual
  //stroke(0, 255, 255);
  
  for (int x = 0; x < generate.amount; x++) {
    for (int y = 0; y < generate.amount; y++) {
      // 0 --> BLACK
      // 1 --> RED
      // 2 --> GREEN
      // 3 --> BLUE
      // 4 --> YELLOW
      // 5 --> BROWN
      // 6 --> WHITE
      // 7 --> ORANGE
      // 8 --> GREY
      if (generate.state[x][y] == 0) {
        fill(#000000);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
      } else if (generate.state[x][y] == 1) {
        fill(#FF0000);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
      } else if (generate.state[x][y] == 2) {
        fill(#0000FF);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
      } else if (generate.state[x][y] == 3) {
        fill(#FFFF00);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
      } else if (generate.state[x][y] == 4) {
        fill(#FFFFFF);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
      } else if (generate.state[x][y] == 5) {
        fill(#A52A2A);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
      } else if (generate.state[x][y] == 6) {
        fill(#00FF00);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
      } else if (generate.state[x][y] == 7) {
        fill(#FFA500);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
      } else if (generate.state[x][y] == 8) {
        fill(#808080);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
      } else if (generate.state[x][y] == 9) {
        fill(#800080);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
      } else if (generate.state[x][y] == 10) {
        fill(#FFC0CB);
        pushMatrix();
        translate(x*tileW, y*tileH);
        rect(0, 0, tileW, tileH);
        popMatrix();
        }
      }
    }
  }
  delay(500); 
  generate.randomMainBadgeGeneratorForAll4Quadrants();
  generate.randomSelectedAnimationInOneOfTheFourQuadrants();
  //delay(350);
  //generate.drawRandomPoppingOffAnimationInOneOfTheFourQuadrants();
  
  //4 Quadrants Captain America Badges
  //generate.CaptainAmericaMainBadgeAnimationTopLeftCorner(1);
  //generate.CaptainAmericaMainBadgeAnimationTopRightCorner(3);
  //generate.CaptainAmericaMainBadgeAnimationBottomRightCorner(5);
  //generate.CaptainAmericaMainBadgeAnimationBottomLeftCorner(7);
  
  //4 Quadrants Spiderman Badges
  //generate.SpiderManMainBadgeAnimationTopLeftCorner(1);
  //generate.SpiderManMainBadgeAnimationTopRightCorner(3);
  //generate.SpiderManMainBadgeAnimationBottomRightCorner(5);
  //generate.SpiderManMainBadgeAnimationBottomLeftCorner(7);
  
  //4 Quadrants IronMan Badges
  //generate.IronManMainBadgeAnimationTopLeftCorner(1);
  //generate.IronManMainBadgeAnimationTopRightCorner(2);
  //generate.IronManMainBadgeAnimationBottomRightCorner(4);
  //generate.IronManMainBadgeAnimationBottomLeftCorner(6);
}

void countUp(int x, int y) {
  if(freePlay.state[x][y] < 10) 
  {
    freePlay.state[x][y]++; 
  } else {
    freePlay.state[x][y] = 0; 
  }
}

void updateBackground(){
  if(generateMode==false && freePlayMode==false){
    background(210);
    fill(#FFFF00);
    rect(width/2-111, height/2-70, 210, 130);
    textSize(44);
    fill(#0000FF);
    text("Generate", 258, 357);
  }
}

boolean isMouseOver(int x, int y, int w, int h){
  if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h){
    return  true;
  }
  return false;
}

void mousePressed(){
  if(gameModeAlreadyChosen==false) {
    if(isMouseOver(width/2-111, height/2-70, 210, 130) == true){
    generateMode = !generateMode;
    gameModeAlreadyChosen = true;
  }
  }
}
