import java.util.Random;
import java.util.Scanner;

class GenerateMode {
int amount = 62; // used to make the grids dimensions so if amount is 13 then grid is 13 by 13 so 169 tiles!!!
int[][] state; //keeps track of tiles state (what colour the tiles are).
int mx, my;
int x, y;
GenerateMode() {
  //amount = int(random(8,41));
  state = new int[amount][amount];
}
//ALL 4 QUADRANTS FUNCTIONS
void randomMainBadgeGeneratorForAll4Quadrants() {
  drawRandomAnimationBetweenIronSpiderManAndCaptainAmericaTopLeftCorner();
  drawRandomAnimationBetweenIronSpiderManAndCaptainAmericaTopRightCorner();
  drawRandomAnimationBetweenIronSpiderManAndCaptainAmericaBottomRightCorner();
  drawRandomAnimationBetweenIronSpiderManAndCaptainAmericaBottomLeftCorner();
}

void randomSelectedAnimationInOneOfTheFourQuadrants() {
  int select = int(random(0,4));
  colourBadgeCircleTopLeftCorner(1);
  colourBadgeCircleTopRightCorner(1);
  colourBadgeCircleBottomRightCorner(1);
  colourBadgeCircleBottomLeftCorner(1);
  if(select==0) {
    drawRandomSelectedAnimationBetweenIronSpiderManAndCaptainAmericaTopLeftCorner();
  }
  if(select==1) {
    drawRandomSelectedAnimationBetweenIronSpiderManAndCaptainAmericaTopRightCorner();
  }
  if(select==2) {
    drawRandomSelectedAnimationBetweenIronSpiderManAndCaptainAmericaBottomRightCorner();
  }
  if(select==3) {
    drawRandomSelectedAnimationBetweenIronSpiderManAndCaptainAmericaBottomLeftCorner();
  }
}

void drawRandomPoppingOffAnimationInOneOfTheFourQuadrants() {
  int select = int(random(0,4));
  colourBadgeCircleTopLeftCorner(1);
  colourBadgeCircleTopRightCorner(1);
  colourBadgeCircleBottomRightCorner(1);
  colourBadgeCircleBottomLeftCorner(1);
  if(select==0) {
    drawRandomPoppingOffCircleBadgeAnimationTopLeftCorner();
  }
  if(select==1) {
    drawRandomPoppingOffCircleBadgeAnimationBottomLeftCorner();
  }
  if(select==2) {
    drawRandomPoppingOffCircleBadgeAnimationTopRightCorner();
  }
  if(select==3) {
    drawRandomPoppingOffCircleBadgeAnimationBottomRightCorner();
  }
}



//TOP
//LEFT
//CORNER
void drawRandomPoppingOffCircleBadgeAnimationTopLeftCorner(){
  int select = int(random(0,3));
  if(select==0) {
    IronManAnimation1TopLeftCorner();
  }
  if(select==1) {
    SpiderManAnimation1TopLeftCorner();
  }
  if(select==2) {
    CaptainAmericaAnimation1TopLeftCorner();
  }
}

void drawRandomAnimationBetweenIronSpiderManAndCaptainAmericaTopLeftCorner() {
  int select = int(random(0,3));
  if(select==0) {
    SpiderManMainBadgeAnimationTopLeftCorner(1);
  }
  if(select==1) {
    CaptainAmericaMainBadgeAnimationTopLeftCorner(1);
  }
  if(select==2) {
    IronManMainBadgeAnimationTopLeftCorner(1);
  }
}

void drawRandomSelectedAnimationBetweenIronSpiderManAndCaptainAmericaTopLeftCorner() {
  int select = int(random(0,3));
  if(select==0) {
    SpiderManMainBadgeAnimationTopLeftCorner(6);
  }
  if(select==1) {
    CaptainAmericaMainBadgeAnimationTopLeftCorner(6);
  }
  if(select==2) {
    IronManMainBadgeAnimationTopLeftCorner(6);
  }
}

void IronManMainBadgeAnimationTopLeftCorner(int colour) {
  colourBadgeCircleTopLeftCorner(colour);
  colourIronManFaceTopLeftCorner(3,colour);
  colourIronManEyesTopLeftCorner(4);
}

void IronManAnimation1TopLeftCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  int randomColour3 = int(random(2,11));
  colourBadgeCircleTopLeftCorner(randomColour1);
  colourIronManFaceTopLeftCorner(randomColour2,randomColour1);
  colourIronManEyesTopLeftCorner(randomColour3);
}

void SpiderManMainBadgeAnimationTopLeftCorner(int colour) {
  colourBadgeCircleTopLeftCorner(colour);
  colourSpiderOnSpidermanBadgeTopLeftCorner(0);
}

void SpiderManAnimation1TopLeftCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  colourBadgeCircleTopLeftCorner(randomColour1);
  colourSpiderOnSpidermanBadgeTopLeftCorner(randomColour2);
}

void CaptainAmericaMainBadgeAnimationTopLeftCorner(int colour) {
  colourBadgeCircleTopLeftCorner(colour);
  colourInnerRingForCaptainAmericaTopLeftCorner(4);
  colourInnerCircleCaptainAmericaTopLeftCorner(2);
  colourStarCaptainAmericaTopLeftCorner(4);
}

void CaptainAmericaAnimation1TopLeftCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  int randomColour3 = int(random(2,11));
  colourBadgeCircleTopLeftCorner(randomColour1);
  colourInnerRingForCaptainAmericaTopLeftCorner(randomColour2);
  colourInnerCircleCaptainAmericaTopLeftCorner(randomColour3);
  colourStarCaptainAmericaTopLeftCorner(randomColour2);
}

void colourStarCaptainAmericaTopLeftCorner(int colour) {
  for(int x = 11; x < 20; x++) {
    for(int y = 11; y < 19; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 13; x < 18; x++) {
    for(int y = 9; y < 11; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 14; x < 17; x++) {
    for(int y = 7; y < 9; y++) {
      state[x][y] = colour;
    }
  }
  state[15][6] = colour;
  for(int y = 17; y < 22; y++) {
      state[10][y] = colour;
      state[20][y] = colour;
   }
   for(int x = 9; x < 14; x++) {
      state[x][19] = colour;
   }
   for(int x = 17; x < 22; x++) {
      state[x][19] = colour;
   }
   state[11][20] = colour;
   state[19][20] = colour;
   for(int y = 20; y < 23; y++) {
      state[9][y] = colour;
      state[21][y] = colour;
   }
   state[8][21] = colour;
   state[8][22] = colour;
   state[22][21] = colour;
   state[22][22] = colour;
   for(int y = 11; y < 15; y++) {
      state[10][y] = colour;
      state[20][y] = colour;
   }
   for(int y = 11; y < 14; y++) {
      state[9][y] = colour;
      state[21][y] = colour;
   }
   for(int y = 11; y < 13; y++) {
      state[8][y] = colour;
      state[22][y] = colour;
   }
   state[7][11] = colour;
   state[23][11] = colour;
}

void colourInnerCircleCaptainAmericaTopLeftCorner(int colour) {
  for(int x = 8; x < 23; x++) {
    for(int y = 8; y < 23; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 10; x < 21; x++) {
      state[x][7] = colour;
      state[x][23] = colour;
  }
  for(int x = 13; x < 18; x++) {
      state[x][6] = colour;
      state[x][24] = colour;
  }
  for(int y = 10; y < 21; y++) {
      state[7][y] = colour;
      state[23][y] = colour;
  }
  for(int y = 13; y < 18; y++) {
      state[6][y] = colour;
      state[24][y] = colour;
  }
}

void colourInnerRingForCaptainAmericaTopLeftCorner(int colour) {
  for(int x = 13; x < 18; x++) {
      state[x][2] = colour;
      state[x][28] = colour;
  }
  for(int x = 10; x < 21; x++) {
      state[x][3] = colour;
      state[x][27] = colour;
  }
  for(int x = 7; x < 13; x++) {
      state[x][4] = colour;
      state[x][26] = colour;
  }
  for(int x = 18; x < 24; x++) {
      state[x][4] = colour;
      state[x][26] = colour;
  }
  for(int x = 6; x < 10; x++) {
      state[x][5] = colour;
      state[x][25] = colour;
  }
  state[6][6] = colour;
  state[6][24] = colour;
  for(int x = 21; x < 25; x++) {
      state[x][5] = colour;
      state[x][25] = colour;
  }
  state[24][6] = colour;
  state[24][24] = colour;
  for(int y = 6; y < 10; y++) {
      state[5][y] = colour;
      state[25][y] = colour;
  }
  for(int y = 21; y < 25; y++) {
      state[5][y] = colour;
      state[25][y] = colour;
  }
  for(int y = 7; y < 13; y++) {
      state[4][y] = colour;
      state[26][y] = colour;
  }
  for(int y = 18; y < 24; y++) {
      state[4][y] = colour;
      state[26][y] = colour;
  }
  for(int y = 10; y < 21; y++) {
      state[3][y] = colour;
      state[27][y] = colour;
  }
  for(int y = 13; y < 18; y++) {
      state[2][y] = colour;
      state[28][y] = colour;
  }
}

void colourSpiderOnSpidermanBadgeTopLeftCorner(int colour) {
  for(int x = 5; x < 26; x++) {
      state[x][11] = colour;
  }
  for(int y = 8; y < 11; y++) {
      state[6][y] = colour;
      state[24][y] = colour;
  }
  for(int y = 5; y < 8; y++) {
      state[7][y] = colour;
      state[23][y] = colour;
  }
  for(int y = 3; y < 5; y++) {
      state[8][y] = colour;
      state[22][y] = colour;
  }
  for(int x = 8; x < 13; x++) {
      state[x][9] = colour;
  }
  for(int x = 18; x < 23; x++) {
      state[x][9] = colour;
  }
  for(int y = 6; y < 9; y++) {
      state[9][y] = colour;
      state[21][y] = colour;
  }
  for(int y = 3; y < 6; y++) {
      state[10][y] = colour;
      state[20][y] = colour;
  }
  for(int x = 13; x < 18; x++) {
    for(int y = 10; y < 14; y++) {
      state[x][y] = colour;
    }
  }
  state[14][9] = colour;
  state[16][9] = colour;
  state[14][14] = colour;
  state[15][14] = colour;
  state[16][14] = colour;
  state[12][13] = colour;
  state[11][13] = colour;
  state[18][13] = colour;
  state[19][13] = colour;
  state[10][14] = colour;
  state[9][14] = colour;
  state[8][14] = colour;
  state[20][14] = colour;
  state[21][14] = colour;
  state[22][14] = colour;
  state[7][15] = colour;
  state[6][15] = colour;
  state[23][15] = colour;
  state[24][15] = colour;
  state[5][16] = colour;
  state[25][16] = colour;
  for(int y = 17; y < 21; y++) {
      state[4][y] = colour;
      state[26][y] = colour;
  }
  for(int y = 21; y < 24; y++) {
      state[5][y] = colour;
      state[25][y] = colour;
  }
  for(int y = 24; y < 27; y++) {
      state[6][y] = colour;
      state[24][y] = colour;
  }
  for(int x = 13; x < 18; x++) {
    for(int y = 15; y < 22; y++) {
      state[x][y] = colour;
    }
  }
  state[12][15] = colour;
  state[18][15] = colour;
  state[11][16] = colour;
  state[19][16] = colour;
  state[14][22] = colour;
  state[15][22] = colour;
  state[16][22] = colour;
  state[15][23] = colour;
  for(int y = 17; y < 23; y++) {
      state[10][y] = colour;
      state[20][y] = colour;
  }
  for(int y = 23; y < 29; y++) {
      state[11][y] = colour;
      state[19][y] = colour;
  }
}

void colourIronManEyesTopLeftCorner(int colour) {
  for(int x = 8; x < 13; x++) {
      state[x][13] = colour;
    }
  for(int x = 18; x < 23; x++) {
      state[x][13] = colour;
    }
  for(int x = 8; x < 14; x++) {
      state[x][14] = colour;
    }
  for(int x = 17; x < 23; x++) {
      state[x][14] = colour;
    }
  for(int x = 9; x < 14; x++) {
      state[x][15] = colour;
    }
  for(int x = 17; x < 22; x++) {
      state[x][15] = colour;
    }
}

void colourIronManFaceTopLeftCorner(int colour, int colour2) {
  state[11][8] = colour;
  state[11][9] = colour;
  state[19][8] = colour;
  state[19][9] = colour;
  for(int x = 9; x < 22; x++) {
    for(int y = 10; y < 23; y++) {
      state[x][y] = colour;
    }
  }
  state[6][5] = colour;
  state[7][5] = colour;
  state[8][5] = colour;
  state[9][5] = colour;
  state[7][4] = colour;
  state[8][4] = colour;
  state[9][4] = colour;
  state[8][3] = colour;
  state[9][3] = colour;
  state[21][5] = colour;
  state[22][5] = colour;
  state[23][5] = colour;
  state[24][5] = colour;
  state[21][4] = colour;
  state[22][4] = colour;
  state[23][4] = colour;
  state[21][3] = colour;
  state[22][3] = colour;
  for(int x = 6; x < 11; x++) {
    for(int y = 6; y < 19; y++) {
      state[x][y] = colour;
    }
  }
  state[7][19] = colour;
  state[8][19] = colour;
  state[8][20] = colour;
  state[23][19] = colour;
  state[22][19] = colour;
  state[22][20] = colour;
  for(int x = 20; x < 25; x++) {
    for(int y = 6; y < 19; y++) {
      state[x][y] = colour;
    }
  }
  state[11][23] = colour;
  state[19][23] = colour;
  for(int x = 9; x < 22; x++) {
    for(int y = 24; y < 27; y++) {
      state[x][y] = colour;
    }    
  }
  for(int x = 10; x < 21; x++) {
      state[x][27] = colour;   
  }
  for(int x = 11; x < 20; x++) {
      state[x][28] = colour;   
  }
  state[11][24] = colour2;
  state[19][24] = colour2;
}

// Starting Circle Badge for Ironman, Spiderman and Thor Icon.
void colourBadgeCircleTopLeftCorner(int colour) {
  for(int x = 0; x < 31; x++) {
    for(int y = 13; y < 18; y++) {
      state[x][y] = colour;
      }
    }
    for(int x = 1; x < 31 - 1; x++) {
    for(int y = 10; y < 13; y++) {
      state[x][y] = colour;
      }
    for(int y = 18; y < 21; y++) {
      state[x][y] = colour;
      }
    }
    for(int x = 2; x < 31 - 2; x++) {
    for(int y = 7; y < 10; y++) {
      state[x][y] = colour;
      }
    for(int y = 21; y < 24; y++) {
      state[x][y] = colour;
      } 
    }
    for(int x = 3; x < 31 - 3; x++) {
    for(int y = 5; y < 7; y++) {
      state[x][y] = colour;
      }
    for(int y = 24; y < 26; y++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 4; y < 27; y++) {
      state[4][y] = colour;
      state[26][y] = colour;
    }
    for(int y = 3; y < 31 - 3; y++) {
    for(int x = 5; x < 7; x++) {
      state[x][y] = colour;
      }
    for(int x = 24; x < 26; x++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 2; y < 31 - 2; y++) {
    for(int x = 7; x < 10; x++) {
      state[x][y] = colour;
      }
    for(int x = 21; x < 24; x++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 1; y < 31 - 1; y++) {
    for(int x = 10; x < 13; x++) {
      state[x][y] = colour;
      }
    for(int x = 18; x < 21; x++) {
      state[x][y] = colour;
      }
    }
  for(int y = 0; y < 31; y++) {
    for(int x = 13; x < 18; x++) {
      state[x][y] = colour;
      }
    }
}

void colourBackgroundTopLeftCorner(int colour) {
  for(int x = 0; x < 31; x++) {
    for(int y = 0; y < 31; y++) {
      state[x][y] = colour;
    }
  }
}



//***EDIT ADD +31 FOR EVERYTHING IN THE X AXIS***
//Indication that function needs edit --> *****
//TOP
//RIGHT
//CORNER

void drawRandomPoppingOffCircleBadgeAnimationTopRightCorner(){
  int select = int(random(0,3));
  if(select==0) {
    IronManAnimation1TopRightCorner();
  }
  if(select==1) {
    SpiderManAnimation1TopRightCorner();
  }
  if(select==2) {
    CaptainAmericaAnimation1TopRightCorner();
  }
}

void drawRandomAnimationBetweenIronSpiderManAndCaptainAmericaTopRightCorner() {
  int select = int(random(0,3));
  if(select==0) {
    SpiderManMainBadgeAnimationTopRightCorner(1);
  }
  if(select==1) {
    CaptainAmericaMainBadgeAnimationTopRightCorner(1);
  }
  if(select==2) {
    IronManMainBadgeAnimationTopRightCorner(1);
  }
}

void drawRandomSelectedAnimationBetweenIronSpiderManAndCaptainAmericaTopRightCorner() {
  int select = int(random(0,3));
  if(select==0) {
    SpiderManMainBadgeAnimationTopRightCorner(6);
  }
  if(select==1) {
    CaptainAmericaMainBadgeAnimationTopRightCorner(6);
  }
  if(select==2) {
    IronManMainBadgeAnimationTopRightCorner(6);
  }
}

void IronManMainBadgeAnimationTopRightCorner(int colour) {
  colourBadgeCircleTopRightCorner(colour);
  colourIronManFaceTopRightCorner(3,colour);
  colourIronManEyesTopRightCorner(4);
}

void IronManAnimation1TopRightCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  int randomColour3 = int(random(2,11));
  colourBadgeCircleTopRightCorner(randomColour1);
  colourIronManFaceTopRightCorner(randomColour2,randomColour1);
  colourIronManEyesTopRightCorner(randomColour3);
}

void SpiderManMainBadgeAnimationTopRightCorner(int colour) {
  colourBadgeCircleTopRightCorner(colour);
  colourSpiderOnSpidermanBadgeTopRightCorner(0);
}

void SpiderManAnimation1TopRightCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  colourBadgeCircleTopRightCorner(randomColour1);
  colourSpiderOnSpidermanBadgeTopRightCorner(randomColour2);
}

void CaptainAmericaMainBadgeAnimationTopRightCorner(int colour) {
  colourBadgeCircleTopRightCorner(colour);
  colourInnerRingForCaptainAmericaTopRightCorner(4);
  colourInnerCircleCaptainAmericaTopRightCorner(2);
  colourStarCaptainAmericaTopRightCorner(4);
}

void CaptainAmericaAnimation1TopRightCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  int randomColour3 = int(random(2,11));
  colourBadgeCircleTopRightCorner(randomColour1);
  colourInnerRingForCaptainAmericaTopRightCorner(randomColour2);
  colourInnerCircleCaptainAmericaTopRightCorner(randomColour3);
  colourStarCaptainAmericaTopRightCorner(randomColour2);
}

void colourStarCaptainAmericaTopRightCorner(int colour) {
  for(int x = 42; x < 51; x++) {
    for(int y = 11; y < 19; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 44; x < 49; x++) {
    for(int y = 9; y < 11; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 45; x < 48; x++) {
    for(int y = 7; y < 9; y++) {
      state[x][y] = colour;
    }
  }
  state[46][6] = colour;
  for(int y = 17; y < 22; y++) {
      state[41][y] = colour;
      state[51][y] = colour;
   }
   for(int x = 40; x < 45; x++) {
      state[x][19] = colour;
   }
   for(int x = 48; x < 53; x++) {
      state[x][19] = colour;
   }
   state[42][20] = colour;
   state[50][20] = colour;
   for(int y = 20; y < 23; y++) {
      state[40][y] = colour;
      state[52][y] = colour;
   }
   state[39][21] = colour;
   state[39][22] = colour;
   state[53][21] = colour;
   state[53][22] = colour;
   for(int y = 11; y < 15; y++) {
      state[41][y] = colour;
      state[51][y] = colour;
   }
   for(int y = 11; y < 14; y++) {
      state[40][y] = colour;
      state[52][y] = colour;
   }
   for(int y = 11; y < 13; y++) {
      state[39][y] = colour;
      state[53][y] = colour;
   }
   state[38][11] = colour;
   state[54][11] = colour;
}

void colourInnerCircleCaptainAmericaTopRightCorner(int colour) {
  for(int x = 39; x < 54; x++) {
    for(int y = 8; y < 23; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 41; x < 52; x++) {
      state[x][7] = colour;
      state[x][23] = colour;
  }
  for(int x = 44; x < 49; x++) {
      state[x][6] = colour;
      state[x][24] = colour;
  }
  for(int y = 10; y < 21; y++) {
      state[38][y] = colour;
      state[54][y] = colour;
  }
  for(int y = 13; y < 18; y++) {
      state[37][y] = colour;
      state[55][y] = colour;
  }
}

void colourInnerRingForCaptainAmericaTopRightCorner(int colour) {
  for(int x = 44; x < 49; x++) {
      state[x][2] = colour;
      state[x][28] = colour;
  }
  for(int x = 41; x < 52; x++) {
      state[x][3] = colour;
      state[x][27] = colour;
  }
  for(int x = 38; x < 44; x++) {
      state[x][4] = colour;
      state[x][26] = colour;
  }
  for(int x = 49; x < 55; x++) {
      state[x][4] = colour;
      state[x][26] = colour;
  }
  for(int x = 37; x < 41; x++) {
      state[x][5] = colour;
      state[x][25] = colour;
  }
  state[37][6] = colour;
  state[37][24] = colour;
  for(int x = 52; x < 56; x++) {
      state[x][5] = colour;
      state[x][25] = colour;
  }
  state[55][6] = colour;
  state[55][24] = colour;
  for(int y = 6; y < 10; y++) {
      state[36][y] = colour;
      state[56][y] = colour;
  }
  for(int y = 21; y < 25; y++) {
      state[36][y] = colour;
      state[56][y] = colour;
  }
  for(int y = 7; y < 13; y++) {
      state[35][y] = colour;
      state[57][y] = colour;
  }
  for(int y = 18; y < 24; y++) {
      state[35][y] = colour;
      state[57][y] = colour;
  }
  for(int y = 10; y < 21; y++) {
      state[34][y] = colour;
      state[58][y] = colour;
  }
  for(int y = 13; y < 18; y++) {
      state[33][y] = colour;
      state[59][y] = colour;
  }
}

void colourSpiderOnSpidermanBadgeTopRightCorner(int colour) {
  for(int x = 36; x < 57; x++) {
      state[x][11] = colour;
  }
  for(int y = 8; y < 11; y++) {
      state[37][y] = colour;
      state[55][y] = colour;
  }
  for(int y = 5; y < 8; y++) {
      state[38][y] = colour;
      state[54][y] = colour;
  }
  for(int y = 3; y < 5; y++) {
      state[39][y] = colour;
      state[53][y] = colour;
  }
  for(int x = 39; x < 44; x++) {
      state[x][9] = colour;
  }
  for(int x = 49; x < 54; x++) {
      state[x][9] = colour;
  }
  for(int y = 6; y < 9; y++) {
      state[40][y] = colour;
      state[52][y] = colour;
  }
  for(int y = 3; y < 6; y++) {
      state[41][y] = colour;
      state[51][y] = colour;
  }
  for(int x = 44; x < 49; x++) {
    for(int y = 10; y < 14; y++) {
      state[x][y] = colour;
    }
  }
  state[45][9] = colour;
  state[47][9] = colour;
  state[45][14] = colour;
  state[46][14] = colour;
  state[47][14] = colour;
  state[43][13] = colour;
  state[42][13] = colour;
  state[49][13] = colour;
  state[50][13] = colour;
  state[41][14] = colour;
  state[40][14] = colour;
  state[39][14] = colour;
  state[51][14] = colour;
  state[52][14] = colour;
  state[53][14] = colour;
  state[38][15] = colour;
  state[37][15] = colour;
  state[54][15] = colour;
  state[55][15] = colour;
  state[36][16] = colour;
  state[56][16] = colour;
  for(int y = 17; y < 21; y++) {
      state[35][y] = colour;
      state[57][y] = colour;
  }
  for(int y = 21; y < 24; y++) {
      state[36][y] = colour;
      state[56][y] = colour;
  }
  for(int y = 24; y < 27; y++) {
      state[37][y] = colour;
      state[55][y] = colour;
  }
  for(int x = 44; x < 49; x++) {
    for(int y = 15; y < 22; y++) {
      state[x][y] = colour;
    }
  }
  state[43][15] = colour;
  state[49][15] = colour;
  state[42][16] = colour;
  state[50][16] = colour;
  state[45][22] = colour;
  state[46][22] = colour;
  state[47][22] = colour;
  state[46][23] = colour;
  for(int y = 17; y < 23; y++) {
      state[41][y] = colour;
      state[51][y] = colour;
  }
  for(int y = 23; y < 29; y++) {
      state[42][y] = colour;
      state[50][y] = colour;
  }
}

void colourIronManEyesTopRightCorner(int colour) {
  for(int x = 39; x < 44; x++) {
      state[x][13] = colour;
    }
  for(int x = 49; x < 54; x++) {
      state[x][13] = colour;
    }
  for(int x = 39; x < 45; x++) {
      state[x][14] = colour;
    }
  for(int x = 48; x < 54; x++) {
      state[x][14] = colour;
    }
  for(int x = 40; x < 45; x++) {
      state[x][15] = colour;
    }
  for(int x = 48; x < 53; x++) {
      state[x][15] = colour;
    }
}

void colourIronManFaceTopRightCorner(int colour, int colour2) {
  state[42][8] = colour;
  state[42][9] = colour;
  state[50][8] = colour;
  state[50][9] = colour;
  for(int x = 40; x < 53; x++) {
    for(int y = 10; y < 23; y++) {
      state[x][y] = colour;
    }
  }
  state[37][5] = colour;
  state[38][5] = colour;
  state[39][5] = colour;
  state[40][5] = colour;
  state[38][4] = colour;
  state[39][4] = colour;
  state[40][4] = colour;
  state[39][3] = colour;
  state[40][3] = colour;
  state[52][5] = colour;
  state[53][5] = colour;
  state[54][5] = colour;
  state[55][5] = colour;
  state[52][4] = colour;
  state[53][4] = colour;
  state[54][4] = colour;
  state[52][3] = colour;
  state[53][3] = colour;
  for(int x = 37; x < 42; x++) {
    for(int y = 6; y < 19; y++) {
      state[x][y] = colour;
    }
  }
  state[38][19] = colour;
  state[39][19] = colour;
  state[39][20] = colour;
  state[54][19] = colour;
  state[53][19] = colour;
  state[53][20] = colour;
  for(int x = 51; x < 56; x++) {
    for(int y = 6; y < 19; y++) {
      state[x][y] = colour;
    }
  }
  state[42][23] = colour;
  state[50][23] = colour;
  for(int x = 40; x < 53; x++) {
    for(int y = 24; y < 27; y++) {
      state[x][y] = colour;
    }    
  }
  for(int x = 41; x < 52; x++) {
      state[x][27] = colour;   
  }
  for(int x = 42; x < 51; x++) {
      state[x][28] = colour;   
  }
  state[42][24] = colour2;
  state[50][24] = colour2;
}

// Starting Circle Badge for Ironman, Spiderman and Thor Icon.
void colourBadgeCircleTopRightCorner(int colour) {
  for(int x = 31; x < 62; x++) {
    for(int y = 13; y < 18; y++) {
      state[x][y] = colour;
      }
    }
    for(int x = 32; x < 62 - 1; x++) {
    for(int y = 10; y < 13; y++) {
      state[x][y] = colour;
      }
    for(int y = 18; y < 21; y++) {
      state[x][y] = colour;
      }
    }
    for(int x = 33; x < 62 - 2; x++) {
    for(int y = 7; y < 10; y++) {
      state[x][y] = colour;
      }
    for(int y = 21; y < 24; y++) {
      state[x][y] = colour;
      } 
    }
    for(int x = 34; x < 62 - 3; x++) {
    for(int y = 5; y < 7; y++) {
      state[x][y] = colour;
      }
    for(int y = 24; y < 26; y++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 4; y < 27; y++) {
      state[35][y] = colour;
      state[57][y] = colour;
    }
    for(int y = 3; y < 31 - 3; y++) {
    for(int x = 36; x < 38; x++) {
      state[x][y] = colour;
      }
    for(int x = 55; x < 57; x++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 2; y < 31 - 2; y++) {
    for(int x = 38; x < 41; x++) {
      state[x][y] = colour;
      }
    for(int x = 52; x < 55; x++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 1; y < 31 - 1; y++) {
    for(int x = 41; x < 44; x++) {
      state[x][y] = colour;
      }
    for(int x = 49; x < 52; x++) {
      state[x][y] = colour;
      }
    }
  for(int y = 0; y < 31; y++) {
    for(int x = 44; x < 49; x++) {
      state[x][y] = colour;
      }
    }
}

void colourBackgroundTopRightCorner(int colour) {
  for(int x = 31; x < 62; x++) {
    for(int y = 0; y < 31; y++) {
      state[x][y] = colour;
    }
  }
}



//***EDIT ADD +31 FOR EVERYTHING IN THE Y AXIS***
//Indication that function needs edit --> *****
//BOTTOM
//RIGHT
//CORNER

void drawRandomPoppingOffCircleBadgeAnimationBottomRightCorner(){
  int select = int(random(0,3));
  if(select==0) {
    IronManAnimation1BottomRightCorner();
  }
  if(select==1) {
    SpiderManAnimation1BottomRightCorner();
  }
  if(select==2) {
    CaptainAmericaAnimation1BottomRightCorner();
  }
}

void drawRandomAnimationBetweenIronSpiderManAndCaptainAmericaBottomRightCorner() {
  int select = int(random(0,3));
  if(select==0) {
    SpiderManMainBadgeAnimationBottomRightCorner(1);
  }
  if(select==1) {
    CaptainAmericaMainBadgeAnimationBottomRightCorner(1);
  }
  if(select==2) {
    IronManMainBadgeAnimationBottomRightCorner(1);
  }
}

void drawRandomSelectedAnimationBetweenIronSpiderManAndCaptainAmericaBottomRightCorner() {
  int select = int(random(0,3));
  if(select==0) {
    SpiderManMainBadgeAnimationBottomRightCorner(6);
  }
  if(select==1) {
    CaptainAmericaMainBadgeAnimationBottomRightCorner(6);
  }
  if(select==2) {
    IronManMainBadgeAnimationBottomRightCorner(6);
  }
}

void IronManMainBadgeAnimationBottomRightCorner(int colour) {
  colourBadgeCircleBottomRightCorner(colour);
  colourIronManFaceBottomRightCorner(3,colour);
  colourIronManEyesBottomRightCorner(4);
}

void IronManAnimation1BottomRightCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  int randomColour3 = int(random(2,11));
  colourBadgeCircleBottomRightCorner(randomColour1);
  colourIronManFaceBottomRightCorner(randomColour2,randomColour1);
  colourIronManEyesBottomRightCorner(randomColour3);
}

void SpiderManMainBadgeAnimationBottomRightCorner(int colour) {
  colourBadgeCircleBottomRightCorner(colour);
  colourSpiderOnSpidermanBadgeBottomRightCorner(0);
}

void SpiderManAnimation1BottomRightCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  colourBadgeCircleBottomRightCorner(randomColour1);
  colourSpiderOnSpidermanBadgeBottomRightCorner(randomColour2);
}

void CaptainAmericaMainBadgeAnimationBottomRightCorner(int colour) {
  colourBadgeCircleBottomRightCorner(colour);
  colourInnerRingForCaptainAmericaBottomRightCorner(4);
  colourInnerCircleCaptainAmericaBottomRightCorner(2);
  colourStarCaptainAmericaBottomRightCorner(4);
}

void CaptainAmericaAnimation1BottomRightCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  int randomColour3 = int(random(2,11));
  colourBadgeCircleBottomRightCorner(randomColour1);
  colourInnerRingForCaptainAmericaBottomRightCorner(randomColour2);
  colourInnerCircleCaptainAmericaBottomRightCorner(randomColour3);
  colourStarCaptainAmericaBottomRightCorner(randomColour2);
}

void colourStarCaptainAmericaBottomRightCorner(int colour) {
  for(int x = 42; x < 51; x++) {
    for(int y = 42; y < 50; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 44; x < 49; x++) {
    for(int y = 40; y < 42; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 45; x < 48; x++) {
    for(int y = 38; y < 40; y++) {
      state[x][y] = colour;
    }
  }
  state[46][37] = colour;
  for(int y = 48; y < 53; y++) {
      state[41][y] = colour;
      state[51][y] = colour;
   }
   for(int x = 40; x < 45; x++) {
      state[x][50] = colour;
   }
   for(int x = 48; x < 53; x++) {
      state[x][50] = colour;
   }
   state[42][51] = colour;
   state[50][51] = colour;
   for(int y = 51; y < 54; y++) {
      state[40][y] = colour;
      state[52][y] = colour;
   }
   state[39][52] = colour;
   state[39][53] = colour;
   state[53][52] = colour;
   state[53][53] = colour;
   for(int y = 42; y < 46; y++) {
      state[41][y] = colour;
      state[51][y] = colour;
   }
   for(int y = 42; y < 45; y++) {
      state[40][y] = colour;
      state[52][y] = colour;
   }
   for(int y = 42; y < 44; y++) {
      state[39][y] = colour;
      state[53][y] = colour;
   }
   state[38][42] = colour;
   state[54][42] = colour;
}

void colourInnerCircleCaptainAmericaBottomRightCorner(int colour) {
  for(int x = 39; x < 54; x++) {
    for(int y = 39; y < 54; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 41; x < 52; x++) {
      state[x][38] = colour;
      state[x][54] = colour;
  }
  for(int x = 44; x < 49; x++) {
      state[x][37] = colour;
      state[x][55] = colour;
  }
  for(int y = 41; y < 52; y++) {
      state[38][y] = colour;
      state[54][y] = colour;
  }
  for(int y = 44; y < 49; y++) {
      state[37][y] = colour;
      state[55][y] = colour;
  }
}

void colourInnerRingForCaptainAmericaBottomRightCorner(int colour) {
  for(int x = 44; x < 49; x++) {
      state[x][33] = colour;
      state[x][59] = colour;
  }
  for(int x = 41; x < 52; x++) {
      state[x][34] = colour;
      state[x][58] = colour;
  }
  for(int x = 38; x < 44; x++) {
      state[x][35] = colour;
      state[x][57] = colour;
  }
  for(int x = 49; x < 55; x++) {
      state[x][35] = colour;
      state[x][57] = colour;
  }
  for(int x = 37; x < 41; x++) {
      state[x][36] = colour;
      state[x][56] = colour;
  }
  state[37][37] = colour;
  state[37][55] = colour;
  for(int x = 52; x < 56; x++) {
      state[x][36] = colour;
      state[x][56] = colour;
  }
  state[55][37] = colour;
  state[55][55] = colour;
  for(int y = 37; y < 41; y++) {
      state[36][y] = colour;
      state[56][y] = colour;
  }
  for(int y = 52; y < 56; y++) {
      state[36][y] = colour;
      state[56][y] = colour;
  }
  for(int y = 38; y < 44; y++) {
      state[35][y] = colour;
      state[57][y] = colour;
  }
  for(int y = 49; y < 55; y++) {
      state[35][y] = colour;
      state[57][y] = colour;
  }
  for(int y = 41; y < 52; y++) {
      state[34][y] = colour;
      state[58][y] = colour;
  }
  for(int y = 44; y < 49; y++) {
      state[33][y] = colour;
      state[59][y] = colour;
  }
}

void colourSpiderOnSpidermanBadgeBottomRightCorner(int colour) {
  for(int x = 36; x < 57; x++) {
      state[x][42] = colour;
  }
  for(int y = 39; y < 42; y++) {
      state[37][y] = colour;
      state[55][y] = colour;
  }
  for(int y = 36; y < 39; y++) {
      state[38][y] = colour;
      state[54][y] = colour;
  }
  for(int y = 34; y < 36; y++) {
      state[39][y] = colour;
      state[53][y] = colour;
  }
  for(int x = 39; x < 44; x++) {
      state[x][40] = colour;
  }
  for(int x = 49; x < 54; x++) {
      state[x][40] = colour;
  }
  for(int y = 37; y < 40; y++) {
      state[40][y] = colour;
      state[52][y] = colour;
  }
  for(int y = 34; y < 37; y++) {
      state[41][y] = colour;
      state[51][y] = colour;
  }
  for(int x = 44; x < 49; x++) {
    for(int y = 41; y < 45; y++) {
      state[x][y] = colour;
    }
  }
  state[45][40] = colour;
  state[47][40] = colour;
  state[45][45] = colour;
  state[46][45] = colour;
  state[47][45] = colour;
  state[43][44] = colour;
  state[42][44] = colour;
  state[49][44] = colour;
  state[50][44] = colour;
  state[41][45] = colour;
  state[40][45] = colour;
  state[39][45] = colour;
  state[51][45] = colour;
  state[52][45] = colour;
  state[53][45] = colour;
  state[38][46] = colour;
  state[37][46] = colour;
  state[54][46] = colour;
  state[55][46] = colour;
  state[36][47] = colour;
  state[56][47] = colour;
  for(int y = 48; y < 52; y++) {
      state[35][y] = colour;
      state[57][y] = colour;
  }
  for(int y = 52; y < 55; y++) {
      state[36][y] = colour;
      state[56][y] = colour;
  }
  for(int y = 55; y < 58; y++) {
      state[37][y] = colour;
      state[55][y] = colour;
  }
  for(int x = 44; x < 49; x++) {
    for(int y = 46; y < 53; y++) {
      state[x][y] = colour;
    }
  }
  state[43][46] = colour;
  state[49][46] = colour;
  state[42][47] = colour;
  state[50][47] = colour;
  state[45][53] = colour;
  state[46][53] = colour;
  state[47][53] = colour;
  state[46][54] = colour;
  for(int y = 48; y < 54; y++) {
      state[41][y] = colour;
      state[51][y] = colour;
  }
  for(int y = 54; y < 60; y++) {
      state[42][y] = colour;
      state[50][y] = colour;
  }
}

void colourIronManEyesBottomRightCorner(int colour) {
  for(int x = 39; x < 44; x++) {
      state[x][44] = colour;
    }
  for(int x = 49; x < 54; x++) {
      state[x][44] = colour;
    }
  for(int x = 39; x < 45; x++) {
      state[x][45] = colour;
    }
  for(int x = 48; x < 54; x++) {
      state[x][45] = colour;
    }
  for(int x = 40; x < 45; x++) {
      state[x][46] = colour;
    }
  for(int x = 48; x < 53; x++) {
      state[x][46] = colour;
    }
}

void colourIronManFaceBottomRightCorner(int colour, int colour2) {
  state[42][39] = colour;
  state[42][40] = colour;
  state[50][39] = colour;
  state[50][40] = colour;
  for(int x = 40; x < 53; x++) {
    for(int y = 41; y < 54; y++) {
      state[x][y] = colour;
    }
  }
  state[37][36] = colour;
  state[38][36] = colour;
  state[39][36] = colour;
  state[40][36] = colour;
  state[38][35] = colour;
  state[39][35] = colour;
  state[40][35] = colour;
  state[39][34] = colour;
  state[40][34] = colour;
  state[52][36] = colour;
  state[53][36] = colour;
  state[54][36] = colour;
  state[55][36] = colour;
  state[52][35] = colour;
  state[53][35] = colour;
  state[54][35] = colour;
  state[52][34] = colour;
  state[53][34] = colour;
  for(int x = 37; x < 42; x++) {
    for(int y = 37; y < 50; y++) {
      state[x][y] = colour;
    }
  }
  state[38][50] = colour;
  state[39][50] = colour;
  state[39][51] = colour;
  state[54][50] = colour;
  state[53][50] = colour;
  state[53][51] = colour;
  for(int x = 51; x < 56; x++) {
    for(int y = 37; y < 50; y++) {
      state[x][y] = colour;
    }
  }
  state[42][54] = colour;
  state[50][54] = colour;
  for(int x = 40; x < 53; x++) {
    for(int y = 55; y < 58; y++) {
      state[x][y] = colour;
    }    
  }
  for(int x = 41; x < 52; x++) {
      state[x][58] = colour;   
  }
  for(int x = 42; x < 51; x++) {
      state[x][59] = colour;   
  }
  state[42][55] = colour2;
  state[50][55] = colour2;
}

// Starting Circle Badge for Ironman, Spiderman and Thor Icon.
void colourBadgeCircleBottomRightCorner(int colour) {
  for(int x = 31; x < 62; x++) {
    for(int y = 44; y < 49; y++) {
      state[x][y] = colour;
      }
    }
    for(int x = 32; x < 62 - 1; x++) {
    for(int y = 41; y < 44; y++) {
      state[x][y] = colour;
      }
    for(int y = 49; y < 52; y++) {
      state[x][y] = colour;
      }
    }
    for(int x = 33; x < 62 - 2; x++) {
    for(int y = 38; y < 41; y++) {
      state[x][y] = colour;
      }
    for(int y = 52; y < 55; y++) {
      state[x][y] = colour;
      } 
    }
    for(int x = 34; x < 62 - 3; x++) {
    for(int y = 36; y < 38; y++) {
      state[x][y] = colour;
      }
    for(int y = 55; y < 57; y++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 35; y < 58; y++) {
      state[35][y] = colour;
      state[57][y] = colour;
    }
    for(int y = 34; y < 62 - 3; y++) {
    for(int x = 36; x < 38; x++) {
      state[x][y] = colour;
      }
    for(int x = 55; x < 57; x++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 33; y < 62 - 2; y++) {
    for(int x = 38; x < 41; x++) {
      state[x][y] = colour;
      }
    for(int x = 52; x < 55; x++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 32; y < 62 - 1; y++) {
    for(int x = 41; x < 44; x++) {
      state[x][y] = colour;
      }
    for(int x = 49; x < 52; x++) {
      state[x][y] = colour;
      }
    }
  for(int y = 31; y < 62; y++) {
    for(int x = 44; x < 49; x++) {
      state[x][y] = colour;
      }
    }
}

void colourBackgroundBottomRightCorner(int colour) {
  for(int x = 31; x < 62; x++) {
    for(int y = 31; y < 62; y++) {
      state[x][y] = colour;
    }
  }
}



//***EDIT DEDUCT -31 FOR EVERYTHING IN THE X AXIS***
//Indication that function needs edit --> *****
//BOTTOM
//LEFT
//CORNER

void drawRandomPoppingOffCircleBadgeAnimationBottomLeftCorner(){
  int select = int(random(0,3));
  if(select==0) {
    IronManAnimation1BottomLeftCorner();
  }
  if(select==1) {
    SpiderManAnimation1BottomLeftCorner();
  }
  if(select==2) {
    CaptainAmericaAnimation1BottomLeftCorner();
  }
}

void drawRandomAnimationBetweenIronSpiderManAndCaptainAmericaBottomLeftCorner() {
  int select = int(random(0,3));
  if(select==0) {
    SpiderManMainBadgeAnimationBottomLeftCorner(1);
  }
  if(select==1) {
    CaptainAmericaMainBadgeAnimationBottomLeftCorner(1);
  }
  if(select==2) {
    IronManMainBadgeAnimationBottomLeftCorner(1);
  }
}

void drawRandomSelectedAnimationBetweenIronSpiderManAndCaptainAmericaBottomLeftCorner() {
  int select = int(random(0,3));
  if(select==0) {
    SpiderManMainBadgeAnimationBottomLeftCorner(6);
  }
  if(select==1) {
    CaptainAmericaMainBadgeAnimationBottomLeftCorner(6);
  }
  if(select==2) {
    IronManMainBadgeAnimationBottomLeftCorner(6);
  }
}

void IronManMainBadgeAnimationBottomLeftCorner(int colour) {
  colourBadgeCircleBottomLeftCorner(colour);
  colourIronManFaceBottomLeftCorner(3,colour);
  colourIronManEyesBottomLeftCorner(4);
}

void IronManAnimation1BottomLeftCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  int randomColour3 = int(random(2,11));
  colourBadgeCircleBottomLeftCorner(randomColour1);
  colourIronManFaceBottomLeftCorner(randomColour2,randomColour1);
  colourIronManEyesBottomLeftCorner(randomColour3);
}

void SpiderManMainBadgeAnimationBottomLeftCorner(int colour) {
  colourBadgeCircleBottomLeftCorner(colour);
  colourSpiderOnSpidermanBadgeBottomLeftCorner(0);
}

void SpiderManAnimation1BottomLeftCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  colourBadgeCircleBottomLeftCorner(randomColour1);
  colourSpiderOnSpidermanBadgeBottomLeftCorner(randomColour2);
}

void CaptainAmericaMainBadgeAnimationBottomLeftCorner(int colour) {
  colourBadgeCircleBottomLeftCorner(colour);
  colourInnerRingForCaptainAmericaBottomLeftCorner(4);
  colourInnerCircleCaptainAmericaBottomLeftCorner(2);
  colourStarCaptainAmericaBottomLeftCorner(4);
}

void CaptainAmericaAnimation1BottomLeftCorner() {
  int randomColour1 = int(random(2,11));
  int randomColour2 = int(random(2,11));
  int randomColour3 = int(random(2,11));
  colourBadgeCircleBottomLeftCorner(randomColour1);
  colourInnerRingForCaptainAmericaBottomLeftCorner(randomColour2);
  colourInnerCircleCaptainAmericaBottomLeftCorner(randomColour3);
  colourStarCaptainAmericaBottomLeftCorner(randomColour2);
}

void colourStarCaptainAmericaBottomLeftCorner(int colour) {
  for(int x = 11; x < 20; x++) {
    for(int y = 42; y < 50; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 13; x < 18; x++) {
    for(int y = 40; y < 42; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 14; x < 17; x++) {
    for(int y = 38; y < 40; y++) {
      state[x][y] = colour;
    }
  }
  state[15][37] = colour;
  for(int y = 48; y < 53; y++) {
      state[10][y] = colour;
      state[20][y] = colour;
   }
   for(int x = 9; x < 14; x++) {
      state[x][50] = colour;
   }
   for(int x = 17; x < 22; x++) {
      state[x][50] = colour;
   }
   state[11][51] = colour;
   state[19][51] = colour;
   for(int y = 51; y < 54; y++) {
      state[9][y] = colour;
      state[21][y] = colour;
   }
   state[8][52] = colour;
   state[8][53] = colour;
   state[22][52] = colour;
   state[22][53] = colour;
   for(int y = 42; y < 46; y++) {
      state[10][y] = colour;
      state[20][y] = colour;
   }
   for(int y = 42; y < 45; y++) {
      state[9][y] = colour;
      state[21][y] = colour;
   }
   for(int y = 42; y < 44; y++) {
      state[8][y] = colour;
      state[22][y] = colour;
   }
   state[7][42] = colour;
   state[23][42] = colour;
}

void colourInnerCircleCaptainAmericaBottomLeftCorner(int colour) {
  for(int x = 8; x < 23; x++) {
    for(int y = 39; y < 54; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 10; x < 21; x++) {
      state[x][38] = colour;
      state[x][54] = colour;
  }
  for(int x = 13; x < 18; x++) {
      state[x][37] = colour;
      state[x][55] = colour;
  }
  for(int y = 41; y < 52; y++) {
      state[7][y] = colour;
      state[23][y] = colour;
  }
  for(int y = 44; y < 49; y++) {
      state[6][y] = colour;
      state[24][y] = colour;
  }
}

void colourInnerRingForCaptainAmericaBottomLeftCorner(int colour) {
  for(int x = 13; x < 18; x++) {
      state[x][33] = colour;
      state[x][59] = colour;
  }
  for(int x = 10; x < 21; x++) {
      state[x][34] = colour;
      state[x][58] = colour;
  }
  for(int x = 7; x < 13; x++) {
      state[x][35] = colour;
      state[x][57] = colour;
  }
  for(int x = 18; x < 24; x++) {
      state[x][35] = colour;
      state[x][57] = colour;
  }
  for(int x = 6; x < 10; x++) {
      state[x][36] = colour;
      state[x][56] = colour;
  }
  state[6][37] = colour;
  state[6][55] = colour;
  for(int x = 21; x < 25; x++) {
      state[x][36] = colour;
      state[x][56] = colour;
  }
  state[24][37] = colour;
  state[24][55] = colour;
  for(int y = 37; y < 41; y++) {
      state[5][y] = colour;
      state[25][y] = colour;
  }
  for(int y = 52; y < 56; y++) {
      state[5][y] = colour;
      state[25][y] = colour;
  }
  for(int y = 38; y < 44; y++) {
      state[4][y] = colour;
      state[26][y] = colour;
  }
  for(int y = 49; y < 55; y++) {
      state[4][y] = colour;
      state[26][y] = colour;
  }
  for(int y = 41; y < 52; y++) {
      state[3][y] = colour;
      state[27][y] = colour;
  }
  for(int y = 44; y < 49; y++) {
      state[2][y] = colour;
      state[28][y] = colour;
  }
}

void colourSpiderOnSpidermanBadgeBottomLeftCorner(int colour) {
  for(int x = 5; x < 26; x++) {
      state[x][42] = colour;
  }
  for(int y = 39; y < 42; y++) {
      state[6][y] = colour;
      state[24][y] = colour;
  }
  for(int y = 36; y < 39; y++) {
      state[7][y] = colour;
      state[23][y] = colour;
  }
  for(int y = 34; y < 36; y++) {
      state[8][y] = colour;
      state[22][y] = colour;
  }
  for(int x = 8; x < 13; x++) {
      state[x][40] = colour;
  }
  for(int x = 18; x < 23; x++) {
      state[x][40] = colour;
  }
  for(int y = 37; y < 40; y++) {
      state[9][y] = colour;
      state[21][y] = colour;
  }
  for(int y = 34; y < 37; y++) {
      state[10][y] = colour;
      state[20][y] = colour;
  }
  for(int x = 13; x < 18; x++) {
    for(int y = 41; y < 45; y++) {
      state[x][y] = colour;
    }
  }
  state[14][40] = colour;
  state[16][40] = colour;
  state[14][45] = colour;
  state[15][45] = colour;
  state[16][45] = colour;
  state[12][44] = colour;
  state[11][44] = colour;
  state[18][44] = colour;
  state[19][44] = colour;
  state[10][45] = colour;
  state[9][45] = colour;
  state[8][45] = colour;
  state[20][45] = colour;
  state[21][45] = colour;
  state[22][45] = colour;
  state[7][46] = colour;
  state[6][46] = colour;
  state[23][46] = colour;
  state[24][46] = colour;
  state[5][47] = colour;
  state[25][47] = colour;
  for(int y = 48; y < 52; y++) {
      state[4][y] = colour;
      state[26][y] = colour;
  }
  for(int y = 52; y < 55; y++) {
      state[5][y] = colour;
      state[25][y] = colour;
  }
  for(int y = 55; y < 58; y++) {
      state[6][y] = colour;
      state[24][y] = colour;
  }
  for(int x = 13; x < 18; x++) {
    for(int y = 46; y < 53; y++) {
      state[x][y] = colour;
    }
  }
  state[12][46] = colour;
  state[18][46] = colour;
  state[11][47] = colour;
  state[19][47] = colour;
  state[14][53] = colour;
  state[15][53] = colour;
  state[16][53] = colour;
  state[15][54] = colour;
  for(int y = 48; y < 54; y++) {
      state[10][y] = colour;
      state[20][y] = colour;
  }
  for(int y = 54; y < 60; y++) {
      state[11][y] = colour;
      state[19][y] = colour;
  }
}

void colourIronManEyesBottomLeftCorner(int colour) {
  for(int x = 8; x < 13; x++) {
      state[x][44] = colour;
    }
  for(int x = 18; x < 23; x++) {
      state[x][44] = colour;
    }
  for(int x = 8; x < 14; x++) {
      state[x][45] = colour;
    }
  for(int x = 17; x < 23; x++) {
      state[x][45] = colour;
    }
  for(int x = 9; x < 14; x++) {
      state[x][46] = colour;
    }
  for(int x = 17; x < 22; x++) {
      state[x][46] = colour;
    }
}

//*****
void colourIronManFaceBottomLeftCorner(int colour, int colour2) {
  state[11][39] = colour;
  state[11][40] = colour;
  state[19][39] = colour;
  state[19][40] = colour;
  for(int x = 9; x < 22; x++) {
    for(int y = 41; y < 54; y++) {
      state[x][y] = colour;
    }
  }
  state[6][36] = colour;
  state[7][36] = colour;
  state[8][36] = colour;
  state[9][36] = colour;
  state[7][35] = colour;
  state[8][35] = colour;
  state[9][35] = colour;
  state[8][34] = colour;
  state[9][34] = colour;
  state[21][36] = colour;
  state[22][36] = colour;
  state[23][36] = colour;
  state[24][36] = colour;
  state[21][35] = colour;
  state[22][35] = colour;
  state[23][35] = colour;
  state[21][34] = colour;
  state[22][34] = colour;
  for(int x = 6; x < 11; x++) {
    for(int y = 37; y < 50; y++) {
      state[x][y] = colour;
    }
  }
  state[7][50] = colour;
  state[8][50] = colour;
  state[8][51] = colour;
  state[23][50] = colour;
  state[22][50] = colour;
  state[22][51] = colour;
  for(int x = 20; x < 25; x++) {
    for(int y = 37; y < 50; y++) {
      state[x][y] = colour;
    }
  }
  state[11][54] = colour;
  state[19][54] = colour;
  for(int x = 9; x < 22; x++) {
    for(int y = 55; y < 58; y++) {
      state[x][y] = colour;
    }    
  }
  for(int x = 10; x < 21; x++) {
      state[x][58] = colour;   
  }
  for(int x = 11; x < 20; x++) {
      state[x][59] = colour;   
  }
  state[11][55] = colour2;
  state[19][55] = colour2;
}

// Starting Circle Badge for Ironman, Spiderman and Thor Icon.
void colourBadgeCircleBottomLeftCorner(int colour) {
  for(int x = 0; x < 31; x++) {
    for(int y = 44; y < 49; y++) {
      state[x][y] = colour;
      }
    }
    for(int x = 1; x < 31 - 1; x++) {
    for(int y = 41; y < 44; y++) {
      state[x][y] = colour;
      }
    for(int y = 49; y < 52; y++) {
      state[x][y] = colour;
      }
    }
    for(int x = 2; x < 31 - 2; x++) {
    for(int y = 38; y < 41; y++) {
      state[x][y] = colour;
      }
    for(int y = 52; y < 55; y++) {
      state[x][y] = colour;
      } 
    }
    for(int x = 3; x < 31 - 3; x++) {
    for(int y = 36; y < 38; y++) {
      state[x][y] = colour;
      }
    for(int y = 55; y < 57; y++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 35; y < 58; y++) {
      state[4][y] = colour;
      state[26][y] = colour;
    }
    for(int y = 34; y < 62 - 3; y++) {
    for(int x = 5; x < 7; x++) {
      state[x][y] = colour;
      }
    for(int x = 24; x < 26; x++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 33; y < 62 - 2; y++) {
    for(int x = 7; x < 10; x++) {
      state[x][y] = colour;
      }
    for(int x = 21; x < 24; x++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 32; y < 62 - 1; y++) {
    for(int x = 10; x < 13; x++) {
      state[x][y] = colour;
      }
    for(int x = 18; x < 21; x++) {
      state[x][y] = colour;
      }
    }
  for(int y = 31; y < 62; y++) {
    for(int x = 13; x < 18; x++) {
      state[x][y] = colour;
      }
    }
}

void colourBackgroundBottomLeftCorner(int colour) {
  for(int x = 0; x < 31; x++) {
    for(int y = 31; y < 62; y++) {
      state[x][y] = colour;
    }
  }
}
}
