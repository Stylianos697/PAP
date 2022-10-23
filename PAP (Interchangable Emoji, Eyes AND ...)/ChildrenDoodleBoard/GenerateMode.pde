import java.util.Random;
import java.util.Scanner;

class GenerateMode {
int amount = 24; // used to make the grids dimensions so if amount is 13 then grid is 13 by 13 so 169 tiles!!!
int[][] state; //keeps track of tiles state (what colour the tiles are).
int mx, my;
int x, y;
GenerateMode() {
  //amount = int(random(8,41));
  state = new int[amount][amount];
}

void drawInterchangeableEmoji() {
ArrayList<Integer> coloursForM = new ArrayList<Integer>();
coloursForM.add(0);
coloursForM.add(1);
coloursForM.add(2);
coloursForM.add(3);
coloursForM.add(5);
coloursForM.add(6);
coloursForM.add(7);
coloursForM.add(8);
Random rand1 = new Random();
Integer randomColour = coloursForM.get(rand1.nextInt(coloursForM.size()));
  for(int x = 0; x < amount; x++) {
    for(int y = 0; y < amount; y++) {
      state[x][y] = randomColour;
    }
  }
int select = int(random(0,3));
  if(select==0) {
    drawOutSmileyFaceWithOpenedMouthAndClosedEyes();
  }
  if(select==1) {
    drawOutSmileyFaceWithClosedMouth();
  }
  if(select==2) {
    drawOutWinkyFace();
  }
}

void drawOutSmileyFaceWithOpenedMouthAndClosedEyes() {
  colourOutlineOfFace();
  colourFillingOfFace();
  colourLeftClosedEye();
  colourRightClosedEye();
  for(int x = 5; x < 19; x++){
    state[x][14] = 6;
  }
  for(int x = 6; x < 18; x++){
    state[x][15] = 6;
  }
  for(int x = 7; x < 17; x++){
    state[x][16] = 6;
  }
  for(int x = 7; x < 17; x++){
    state[x][17] = 5;
  }
  for(int x = 8; x < 16; x++){
    state[x][18] = 5;
  }
  state[5][15] = 5;
  state[18][15] = 5;
  state[6][16] = 5;
  state[17][16] = 5;

}

void drawOutSmileyFaceWithClosedMouth() {
  colourOutlineOfFace();
  colourFillingOfFace();
  colourLeftEye();
  colourRightEye();
  for(int x = 8; x < 16; x++){
    state[x][18] = 0;
  }
  state[5][14] = 0;
  state[5][15] = 0;
  state[6][16] = 0;
  state[7][17] = 0;
  state[16][17] = 0;
  state[17][16] = 0;
  state[18][15] = 0;
  state[18][14] = 0;
}

void drawOutWinkyFace() {
  colourOutlineOfFace();
  colourFillingOfFace();
  colourLeftEye();
  colourRightWinkyEye();
  for(int x = 8; x < 16; x++){
    state[x][18] = 0;
  }
  state[7][17] = 0;
  state[16][17] = 0;
  state[17][16] = 0;
  state[18][15] = 0;
  state[18][14] = 0;
}

void colourOutlineOfFace() {
int randomColour = int(random(0,5));
//TRY WITH JUST 1 RANDOM COLOUR FOR ALL

//int randomColour1 = int(random(1,6));
//int randomColour2 = int(random(1,6));
//int randomColour3 = int(random(1,6));
//int randomColour4 = int(random(1,6));
//1st quarter of the Face
state[2][11] = randomColour;
state[2][10] = randomColour;
state[2][9] = randomColour;
state[2][8] = randomColour;
state[2][7] = randomColour;
state[2][6] = randomColour;
state[3][5] = randomColour;
state[4][4] = randomColour;
state[5][3] = randomColour;
state[6][2] = randomColour;
state[7][2] = randomColour;
state[8][2] = randomColour;
state[9][2] = randomColour;
state[10][2] = randomColour;
state[11][2] = randomColour;

//2nd quarter of the Face 
state[21][11] = randomColour;
state[21][10] = randomColour;
state[21][9] = randomColour;
state[21][8] = randomColour;
state[21][7] = randomColour;
state[21][6] = randomColour;
state[20][5] = randomColour;
state[19][4] = randomColour;
state[18][3] = randomColour;
state[12][2] = randomColour;
state[13][2] = randomColour;
state[14][2] = randomColour;
state[15][2] = randomColour;
state[16][2] = randomColour;
state[17][2] = randomColour;

//3rd quarter of the Face 
state[21][12] = randomColour;
state[21][13] = randomColour;
state[21][14] = randomColour;
state[21][15] = randomColour;
state[21][16] = randomColour;
state[21][17] = randomColour;
state[20][18] = randomColour;
state[19][19] = randomColour;
state[18][20] = randomColour;
state[12][21] = randomColour;
state[13][21] = randomColour;
state[14][21] = randomColour;
state[15][21] = randomColour;
state[16][21] = randomColour;
state[17][21] = randomColour;

//4th quarter of the Face
state[2][12] = randomColour;
state[2][13] = randomColour;
state[2][14] = randomColour;
state[2][15] = randomColour;
state[2][16] = randomColour;
state[2][17] = randomColour;
state[3][18] = randomColour;
state[4][19] = randomColour;
state[5][20] = randomColour;
state[6][21] = randomColour;
state[7][21] = randomColour;
state[8][21] = randomColour;
state[9][21] = randomColour;
state[10][21] = randomColour;
state[11][21] = randomColour;
}

void colourFillingOfFace() {
  for(int x = 6; x < 18; x++) {
    state[x][3] = 4;
    state[x][20] = 4;
  }
  for(int x = 5; x < 19; x++) {
    state[x][4] = 4;
    state[x][19] = 4;
  }
  for(int x = 4; x < 20; x++) {
    state[x][5] = 4;
    state[x][18] = 4;
  }
  for(int y = 6; y < 18; y++) {
  for(int x = 3; x < 21; x++) {
    state[x][y] = 4;
  }
  }
}

void colourLeftEye() {
  for(int x = 6; x < 11; x++){
      state[x][7] = 0;
      state[x][8] = 0;
  }
  for(int x = 7; x < 10; x++){
      state[x][6] = 0;
      state[x][9] = 0;
  }
}

void colourRightEye() {
  for(int x = 13; x < 18; x++){
      state[x][7] = 0;
      state[x][8] = 0;
  }
  for(int x = 14; x < 17; x++){
      state[x][6] = 0;
      state[x][9] = 0;
  }
}

void colourRightWinkyEye() {
  for(int x = 14; x < 18; x++){
      state[x][7] = 0;
  }
  state[13][8] = 0;
  state[18][8] = 0;
}

void colourRightClosedEye() {
  state[13][8] = 0;
  state[14][7] = 0;
  state[15][6] = 0;
  state[16][7] = 0;
  state[17][8] = 0;
}

void colourLeftClosedEye() {
  state[10][8] = 0;
  state[9][7] = 0;
  state[8][6] = 0;
  state[7][7] = 0;
  state[6][8] = 0;
}

void drawRandomEyesAnimations() {
int select = int(random(0,4));
if(select==0) {
  drawRandomColouredOutterPartOfEyesAndInnerPartOfEyesAnimation();
}
if(select==1){
  drawRandomColouredInnerPartOfEyesAnimation();
}
if(select==2){
  drawRandomColouredEyesAndBackgroundAnimation();
}
if(select==3){
  drawRandomColouredOutterPartOfEyesAnimation();
}
}

void drawRandomColouredOutterPartOfEyesAndInnerPartOfEyesAnimation() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(6);
colours.add(4);
colours.add(7);
Random rand1 = new Random();
Integer randomColour1 = colours.get(rand1.nextInt(colours.size()));
ArrayList<Integer> colours2 = new ArrayList<Integer>();
colours2.add(2);
colours2.add(3);
colours2.add(5);
colours2.add(8);
Random rand2 = new Random();
Integer randomColour2 = colours2.get(rand2.nextInt(colours2.size()));
for(x = 0; x < amount; x++) {
  for(y = 0; y < amount; y++) {
    state[x][y] = 0;
  }
}
  colourEyesAnimation(randomColour1, randomColour2);
}

void drawRandomColouredInnerPartOfEyesAnimation() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(0);
colours.add(1);
colours.add(2);
colours.add(3);
colours.add(4);
colours.add(5);
colours.add(7);
colours.add(8);
Random rand1 = new Random();
Integer randomColour1 = colours.get(rand1.nextInt(colours.size()));
for(x = 0; x < amount; x++) {
  for(y = 0; y < amount; y++) {
    state[x][y] = 0;
  }
}
  colourEyesAnimation(6, randomColour1);
}

void drawRandomColouredOutterPartOfEyesAnimation() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(1);
colours.add(2);
colours.add(3);
colours.add(4);
colours.add(6);
colours.add(7);
Random rand1 = new Random();
Integer randomColour1 = colours.get(rand1.nextInt(colours.size()));
for(x = 0; x < amount; x++) {
  for(y = 0; y < amount; y++) {
    state[x][y] = 0;
  }
}
  colourEyesAnimation(randomColour1, 0);
}

void drawSameRandomColouredEyesAndBackgroundAnimation() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(0);
colours.add(1);
colours.add(2);
colours.add(3);
colours.add(4);
colours.add(5);
colours.add(7);
colours.add(8);
Random rand1 = new Random();
Integer randomColour1 = colours.get(rand1.nextInt(colours.size()));
for(x = 0; x < amount; x++) {
  for(y = 0; y < amount; y++) {
    state[x][y] = randomColour1;
  }
}
  colourEyesAnimation(6, randomColour1);
}

void drawRandomColouredEyesAndBackgroundAnimation() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(0);
colours.add(1);
colours.add(2);
colours.add(3);
colours.add(4);
colours.add(5);
colours.add(7);
colours.add(8);
Random rand1 = new Random();
Integer randomColour1 = colours.get(rand1.nextInt(colours.size()));
Integer randomColour2 = colours.get(rand1.nextInt(colours.size()));
for(x = 0; x < amount; x++) {
  for(y = 0; y < amount; y++) {
    state[x][y] = randomColour1;
  }
}
  colourEyesAnimation(6, randomColour2);
}

void colourEyesAnimation(int colour, int colour2){
  //Outter part of eyes
  for(x = 3; x < 21; x++) {
    for(y = 8; y < 16; y++) {
      state[x][y] = colour;
    }
  }
  for(x = 4; x < 11; x++) {
      state[x][7] = colour;
      state[x][16] = colour;
    }
  for(x = 13; x < 20; x++) {
      state[x][7] = colour;
      state[x][16] = colour;
    }
  for(x = 5; x < 10; x++) {
      state[x][6] = colour;
      state[x][17] = colour;
    }
  for(x = 14; x < 19; x++) {
      state[x][6] = colour;
      state[x][17] = colour;
    }
  for(x = 6; x < 9; x++) {
      state[x][5] = colour;
      state[x][18] = colour;
    }
  for(x = 15; x < 18; x++) {
      state[x][5] = colour;
      state[x][18] = colour;
    }
   
   //Inner part of eyes
   for(x = 5; x < 7; x++) {
     state[x][9] = colour2;
     state[x][14] = colour2;
   }
   for(x = 14; x < 16; x++) {
     state[x][9] = colour2;
     state[x][14] = colour2;
   }
   for(x = 4; x < 6; x++) {
     for(y = 10; y <12; y++) {
     state[x][y] = colour2;
     }
   }
   for(x = 4; x < 8; x++) {
     for(y = 12; y <14; y++) {
     state[x][y] = colour2;
     }
   }
   for(x = 13; x < 15; x++) {
     for(y = 10; y <12; y++) {
     state[x][y] = colour2;
     }
   }
   for(x = 13; x < 17; x++) {
     for(y = 12; y <14; y++) {
     state[x][y] = colour2;
     }
   }
}

void drawThreeDotsAnimation1() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(0);
colours.add(5);
Random rand1 = new Random();
Integer randomBackgroundColour1 = colours.get(rand1.nextInt(colours.size()));
ArrayList<Integer> colours2 = new ArrayList<Integer>();
colours2.add(1);
colours2.add(2);
colours2.add(3);
colours2.add(4);
colours2.add(6);
colours2.add(7);
colours2.add(8);
colours2.add(9);
colours2.add(10);
Random rand2 = new Random();
Integer randomDotColour1 = colours2.get(rand2.nextInt(colours2.size()));
Random rand3 = new Random();
Integer randomDotColour2 = colours2.get(rand3.nextInt(colours2.size()));
Random rand4 = new Random();
Integer randomDotColour3 = colours2.get(rand4.nextInt(colours2.size()));
for(int x = 0; x < amount; x++) {
  for(int y = 0; y < amount; y++) {
    state[x][y] = randomBackgroundColour1;
   }
}
colourThreeDotsAnimation(randomDotColour1, randomDotColour2, randomDotColour3);
}

void drawThreeDotsAnimation2() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(0);
colours.add(5);
Random rand1 = new Random();
Integer randomBackgroundColour1 = colours.get(rand1.nextInt(colours.size()));
ArrayList<Integer> colours2 = new ArrayList<Integer>();
colours2.add(1);
colours2.add(2);
colours2.add(3);
colours2.add(4);
colours2.add(6);
colours2.add(7);
colours2.add(8);
colours2.add(9);
colours2.add(10);
Random rand2 = new Random();
Integer randomDotColour1 = colours2.get(rand2.nextInt(colours2.size()));
for(int x = 0; x < amount; x++) {
  for(int y = 0; y < amount; y++) {
    state[x][y] = randomBackgroundColour1;
   }
}
colourThreeDotsAnimation(randomDotColour1, randomDotColour1, randomDotColour1);
}

void drawThreeDotsAnimation3() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(0);
colours.add(5);
Random rand1 = new Random();
Integer randomBackgroundColour1 = colours.get(rand1.nextInt(colours.size()));
ArrayList<Integer> colours2 = new ArrayList<Integer>();
colours2.add(1);
colours2.add(2);
colours2.add(8);
ArrayList<Integer> colours3 = new ArrayList<Integer>();
colours3.add(3);
colours3.add(4);
colours3.add(10);
ArrayList<Integer> colours4 = new ArrayList<Integer>();
colours4.add(6);
colours4.add(7);
colours4.add(9);
Random rand2 = new Random();
Integer randomDotColour1 = colours2.get(rand2.nextInt(colours2.size()));
Random rand3 = new Random();
Integer randomDotColour2 = colours3.get(rand3.nextInt(colours3.size()));
Random rand4 = new Random();
Integer randomDotColour3 = colours4.get(rand4.nextInt(colours4.size()));
for(int x = 0; x < amount; x++) {
  for(int y = 0; y < amount; y++) {
    state[x][y] = randomBackgroundColour1;
   }
}
colourThreeDotsAnimation(randomDotColour1, randomDotColour2, randomDotColour3);
}

void drawThreeDotsAnimation4() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(4);
colours.add(6);
Random rand1 = new Random();
Integer randomBackgroundColour1 = colours.get(rand1.nextInt(colours.size()));
ArrayList<Integer> colours2 = new ArrayList<Integer>();
colours2.add(1);
colours2.add(2);
colours2.add(3);
colours2.add(5);
colours2.add(0);
colours2.add(7);
colours2.add(8);
colours2.add(9);
colours2.add(10);
Random rand2 = new Random();
Integer randomDotColour1 = colours2.get(rand2.nextInt(colours2.size()));
Random rand3 = new Random();
Integer randomDotColour2 = colours2.get(rand3.nextInt(colours2.size()));
Random rand4 = new Random();
Integer randomDotColour3 = colours2.get(rand4.nextInt(colours2.size()));
for(int x = 0; x < amount; x++) {
  for(int y = 0; y < amount; y++) {
    state[x][y] = randomBackgroundColour1;
   }
}
colourThreeDotsAnimation(randomDotColour1, randomDotColour2, randomDotColour3);
}

void drawThreeDotsAnimation5() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(4);
colours.add(6);
Random rand1 = new Random();
Integer randomBackgroundColour1 = colours.get(rand1.nextInt(colours.size()));
ArrayList<Integer> colours2 = new ArrayList<Integer>();
colours2.add(1);
colours2.add(2);
colours2.add(3);
colours2.add(5);
colours2.add(0);
colours2.add(7);
colours2.add(8);
colours2.add(9);
colours2.add(10);
Random rand2 = new Random();
Integer randomDotColour1 = colours2.get(rand2.nextInt(colours2.size()));
for(int x = 0; x < amount; x++) {
  for(int y = 0; y < amount; y++) {
    state[x][y] = randomBackgroundColour1;
   }
}
colourThreeDotsAnimation(randomDotColour1, randomDotColour1, randomDotColour1);
}

void drawThreeDotsAnimation6() {
ArrayList<Integer> colours = new ArrayList<Integer>();
colours.add(4);
colours.add(6);
Random rand1 = new Random();
Integer randomBackgroundColour1 = colours.get(rand1.nextInt(colours.size()));
ArrayList<Integer> colours2 = new ArrayList<Integer>();
colours2.add(1);
colours2.add(2);
colours2.add(8);
ArrayList<Integer> colours3 = new ArrayList<Integer>();
colours3.add(3);
colours3.add(0);
colours3.add(10);
ArrayList<Integer> colours4 = new ArrayList<Integer>();
colours4.add(5);
colours4.add(7);
colours4.add(9);
Random rand2 = new Random();
Integer randomDotColour1 = colours2.get(rand2.nextInt(colours2.size()));
Random rand3 = new Random();
Integer randomDotColour2 = colours3.get(rand3.nextInt(colours3.size()));
Random rand4 = new Random();
Integer randomDotColour3 = colours4.get(rand4.nextInt(colours4.size()));
for(int x = 0; x < amount; x++) {
  for(int y = 0; y < amount; y++) {
    state[x][y] = randomBackgroundColour1;
   }
}
colourThreeDotsAnimation(randomDotColour1, randomDotColour2, randomDotColour3);
}

void drawRandomThreeDotsAnimation() {
  int select = int(random(0,6));
  if(select==0) { 
    drawThreeDotsAnimation1();
  }
  if(select==1) { 
    drawThreeDotsAnimation2();
  }
  if(select==2) { 
    drawThreeDotsAnimation3();
  }
  if(select==3) { 
    drawThreeDotsAnimation4();
  }
  if(select==4) { 
    drawThreeDotsAnimation5();
  }
  if(select==5) { 
    drawThreeDotsAnimation6();
  }
}

void colourThreeDotsAnimation(int colour1, int colour2, int colour3){
  colourFirstDot(colour1);
  colourSecondDot(colour2);
  colourThirdDot(colour3);
}

void colourFirstDot(int colour) {
  for(int y = 20; y < 22; y++) {
    state[6][y] = colour;
    state[7][y] = colour;
  }
}

void colourSecondDot(int colour) {
  for(int y = 20; y < 22; y++) {
    state[11][y] = colour;
    state[12][y] = colour;
  }
}

void colourThirdDot(int colour) {
  for(int y = 20; y < 22; y++) {
    state[16][y] = colour;
    state[17][y] = colour;
  }
}
}
