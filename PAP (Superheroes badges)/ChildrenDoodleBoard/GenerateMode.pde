import java.util.Random;
import java.util.Scanner;

class GenerateMode {
int amount = 31; // used to make the grids dimensions so if amount is 13 then grid is 13 by 13 so 169 tiles!!!
int[][] state; //keeps track of tiles state (what colour the tiles are).
int mx, my;
int x, y;
GenerateMode() {
  //amount = int(random(8,41));
  state = new int[amount][amount];
}

void drawRandomAnimationBetweenIronSpiderManAndCaptainAmerica() {
  int select = int(random(0,3));
  if(select==0) {
    generate.SpiderManMainBadgeAnimation();
  }
  if(select==1) {
    generate.CaptainAmericaMainBadgeAnimation();
  }
  if(select==2) {
    generate.IronManMainBadgeAnimation();
  }
}

void drawAnimationOf4Quadrants() {
  int randomNum1 = int(random(0,3));
  int randomNum2 = int(random(0,3));
  int randomNum3 = int(random(0,3));
  int randomNum4 = int(random(0,3));
  
  //1st Quadrant.
  colourBadgeCircle(1);
  if(randomNum1==0) {
    colourCaptainAmerica1stQuadrantOutOf4(4,2);
  }
  if(randomNum1==1) {
    colourIronMan1stQuadrantOutOf4(3,4);
  }
  if(randomNum1==2) {
    colourSpiderMan1stQuadrantOutOF4(0);
  }
  
  //2nd Quadrant
  if(randomNum2==0) {
    colourCaptainAmerica2ndQuadrantOutOf4(4,2);
  }
  if(randomNum2==1) {
    colourIronMan2ndQuadrantOutOf4(3,4);
  }
  if(randomNum2==2) {
    colourSpiderMan2ndQuadrantOutOF4(0);
  }
  
  //3rd Quadrant
  if(randomNum3==0) {
    colourCaptainAmerica3rdQuadrantOutOf4(4,2);
  }
  if(randomNum3==1) {
    colourIronMan3rdQuadrantOutOf4(3,4);
  }
  if(randomNum3==2) {
    colourSpiderMan3rdQuadrantOutOF4(0);
  }
  
  //4th Quadrant
  if(randomNum4==0) {
    colourCaptainAmerica4thQuadrantOutOf4(4,2);
  }
  if(randomNum4==1) {
    colourIronMan4thQuadrantOutOf4(3,4);
  }
  if(randomNum4==2) {
    colourSpiderMan4thQuadrantOutOF4(0);
  }
}

void colourCaptainAmerica1stQuadrantOutOf4(int colour1, int colour2) {
  for(int x = 13; x < 16; x++) {
      state[x][2] = colour1;
  }
  for(int x = 10; x < 16; x++) {
      state[x][3] = colour1;
  }
  for(int x = 7; x < 13; x++) {
      state[x][4] = colour1;
  }
  for(int x = 6; x < 10; x++) {
      state[x][5] = colour1;
  }
  state[6][6] = colour1;
  for(int y = 6; y < 10; y++) {
      state[5][y] = colour1;
  }
  for(int y = 7; y < 13; y++) {
      state[4][y] = colour1;
  }
  for(int y = 10; y < 16; y++) {
      state[3][y] = colour1;
  }
  for(int y = 13; y < 16; y++) {
      state[2][y] = colour1;
  }  
  for(int x = 8; x < 16; x++) {
    for(int y = 8; y < 16; y++) {
      state[x][y] = colour2;
      state[x][y] = colour2;
    }
  }
  for(int x = 10; x < 16; x++) {
      state[x][7] = colour2;
  }
  for(int x = 13; x < 16; x++) {
      state[x][6] = colour2;
  }
  for(int y = 10; y < 16; y++) {
      state[7][y] = colour2;
  }
  for(int y = 13; y < 16; y++) {
      state[6][y] = colour2;
  }
  for(int x = 11; x < 16; x++) {
    for(int y = 11; y < 16; y++) {
      state[x][y] = colour1;
    }
  }
  for(int x = 13; x < 16; x++) {
    for(int y = 9; y < 11; y++) {
      state[x][y] = colour1;
    }
  }
  for(int x = 14; x < 16; x++) {
    for(int y = 7; y < 9; y++) {
      state[x][y] = colour1;
    }
  }
  state[15][6] = colour1;
   for(int y = 11; y < 15; y++) {
      state[10][y] = colour1;
   }
   for(int y = 11; y < 14; y++) {
      state[9][y] = colour1;
   }
   for(int y = 11; y < 13; y++) {
      state[8][y] = colour1;
   }
   state[7][11] = colour1;
}

void colourCaptainAmerica2ndQuadrantOutOf4(int colour1, int colour2) {
  for(int x = 16; x < 18; x++) {
      state[x][2] = colour1;
  }
  for(int x = 16; x < 21; x++) {
      state[x][3] = colour1;
  }
  for(int x = 18; x < 24; x++) {
      state[x][4] = colour1;
  }
  for(int x = 21; x < 25; x++) {
      state[x][5] = colour1;
  }
  state[24][6] = colour1;
  for(int y = 6; y < 10; y++) {
      state[25][y] = colour1;
  }
  for(int y = 7; y < 13; y++) {
      state[26][y] = colour1;
  }
  for(int y = 10; y < 16; y++) {
      state[27][y] = colour1;
  }
  for(int y = 13; y < 16; y++) {
      state[28][y] = colour1;
  } 
  for(int x = 16; x < 23; x++) {
    for(int y = 8; y < 16; y++) {
      state[x][y] = colour2;
    }
  }
  for(int x = 16; x < 21; x++) {
      state[x][7] = colour2;
  }
  for(int x = 16; x < 18; x++) {
      state[x][6] = colour2;
  }
  for(int y = 10; y < 16; y++) {
      state[23][y] = colour2;
  }
  for(int y = 13; y < 16; y++) {
      state[24][y] = colour2;
  }  
  for(int x = 16; x < 20; x++) {
    for(int y = 11; y < 16; y++) {
      state[x][y] = colour1;
    }
  }
  for(int x = 16; x < 18; x++) {
    for(int y = 9; y < 11; y++) {
      state[x][y] = colour1;
    }
  }
  for(int x = 16; x < 17; x++) {
    for(int y = 7; y < 9; y++) {
      state[x][y] = colour1;
    }
  }
   for(int y = 11; y < 15; y++) {
      state[20][y] = colour1;
   }
   for(int y = 11; y < 14; y++) {
      state[21][y] = colour1;
   }
   for(int y = 11; y < 13; y++) {
      state[22][y] = colour1;
   }
   state[23][11] = colour1;
}

void colourCaptainAmerica3rdQuadrantOutOf4(int colour1, int colour2) {
  for(int x = 13; x < 16; x++) {
      state[x][28] = colour1;
  }
  for(int x = 10; x < 16; x++) {
      state[x][27] = colour1;
  }
  for(int x = 7; x < 13; x++) {
      state[x][26] = colour1;
  }
  for(int x = 6; x < 10; x++) {
      state[x][25] = colour1;
  }
  state[6][24] = colour1;
  for(int y = 21; y < 25; y++) {
      state[5][y] = colour1;
  }
  for(int y = 18; y < 24; y++) {
      state[4][y] = colour1;
  }
  for(int y = 16; y < 21; y++) {
      state[3][y] = colour1;
  }
  for(int y = 16; y < 18; y++) {
      state[2][y] = colour1;
  }
  
  for(int x = 8; x < 16; x++) {
    for(int y = 16; y < 23; y++) {
      state[x][y] = colour2;
    }
  }
  for(int x = 10; x < 16; x++) {
      state[x][23] = colour2;
  }
  for(int x = 13; x < 16; x++) {
      state[x][24] = colour2;
  }
  for(int y = 16; y < 21; y++) {
      state[7][y] = colour2;
  }
  for(int y = 16; y < 18; y++) {
      state[6][y] = colour2;
  }
  for(int x = 11; x < 16; x++) {
    for(int y = 16; y < 19; y++) {
      state[x][y] = colour1;
    }
  }
  for(int y = 17; y < 22; y++) {
      state[10][y] = colour1;
   }
   for(int x = 9; x < 14; x++) {
      state[x][19] = colour1;
   }
   state[11][20] = colour1;
   for(int y = 20; y < 23; y++) {
      state[9][y] = colour1;
   }
   state[8][21] = colour1;
   state[8][22] = colour1;
}

void colourCaptainAmerica4thQuadrantOutOf4(int colour1, int colour2) {
  for(int x = 16; x < 18; x++) {
      state[x][28] = colour1;
  }
  for(int x = 16; x < 21; x++) {
      state[x][27] = colour1;
  }
  for(int x = 18; x < 24; x++) {
      state[x][26] = colour1;
  }
  for(int x = 21; x < 25; x++) {
      state[x][25] = colour1;
  }
  state[24][24] = colour1;
  for(int y = 21; y < 25; y++) {
      state[25][y] = colour1;
  }
  for(int y = 18; y < 24; y++) {
      state[26][y] = colour1;
  }
  for(int y = 16; y < 21; y++) {
      state[27][y] = colour1;
  }
  for(int y = 16; y < 18; y++) {
      state[28][y] = colour1;
  }  
  for(int x = 16; x < 23; x++) {
    for(int y = 16; y < 23; y++) {
      state[x][y] = colour2;
    }
  }
  for(int x = 16; x < 21; x++) {
      state[x][23] = colour2;
  }
  for(int x = 16; x < 18; x++) {
      state[x][24] = colour2;
  }
  for(int y = 16; y < 21; y++) {
      state[23][y] = colour2;
  }
  for(int y = 16; y < 18; y++) {
      state[24][y] = colour2;
  }
  
  
  for(int x = 16; x < 20; x++) {
    for(int y = 16; y < 19; y++) {
      state[x][y] = colour1;
    }
  }
  for(int y = 17; y < 22; y++) {
      state[20][y] = colour1;
   }
   for(int x = 17; x < 22; x++) {
      state[x][19] = colour1;
   }
   state[19][20] = colour1;
   for(int y = 20; y < 23; y++) {
      state[21][y] = colour1;
   }
   state[22][21] = colour1;
   state[22][22] = colour1;
}

void colourIronMan1stQuadrantOutOf4(int colour1, int colour2) {
 for(int x = 6; x < 16; x++) {
   for(int y = 10; y < 16; y++) {
     state[x][y] = colour1;
   }
 }
 state[8][3] = colour1;
 state[9][3] = colour1;
 for(int x = 7; x < 10; x++) {
   state[x][4] = colour1;
 }
 for(int x = 6; x < 10; x++) {
   state[x][5] = colour1;
 }
 for(int x = 6; x < 11; x++) {
   for(int y = 6; y < 8; y++) {
     state[x][y] = colour1;
   }
 }
 for(int x = 6; x < 12; x++) {
   for(int y = 8; y < 10; y++) {
     state[x][y] = colour1;
   }
 }
 for(int x = 8; x < 13; x++) {
      state[x][13] = colour2;
 }
 for(int x = 8; x < 14; x++) {
      state[x][14] = colour2;
 }
 for(int x = 9; x < 14; x++) {
      state[x][15] = colour2;
 }
}

void colourIronMan2ndQuadrantOutOf4(int colour1, int colour2) {
 for(int x = 16; x < 25; x++) {
   for(int y = 10; y < 16; y++) {
     state[x][y] = colour1;
   }
 }
 state[21][3] = colour1;
 state[22][3] = colour1;
 for(int x = 21; x < 24; x++) {
   state[x][4] = colour1;
 }
 for(int x = 21; x < 25; x++) {
   state[x][5] = colour1;
 }
 for(int x = 20; x < 25; x++) {
   for(int y = 6; y < 8; y++) {
     state[x][y] = colour1;
   }
 }
 for(int x = 19; x < 25; x++) {
   for(int y = 8; y < 10; y++) {
     state[x][y] = colour1;
   }
 }
 for(int x = 18; x < 23; x++) {
      state[x][13] = colour2;
 }
 for(int x = 17; x < 23; x++) {
      state[x][14] = colour2;
 }
 for(int x = 17; x < 22; x++) {
      state[x][15] = colour2;
 }
}

void colourIronMan3rdQuadrantOutOf4(int colour1, int colour2) {
  for(int x = 6; x < 9; x++) {
    for(int y = 16; y < 19; y++) {
      state[x][y] = colour1;
    }
  }
  state[8][19] = colour1;
  state[7][19] = colour1;
  state[8][20] = colour1;
  for(int x = 9; x < 16; x++) {
    for(int y = 16; y < 23; y++) {
      state[x][y] = colour1;
    }
  }
  state[11][23] = colour1;
  for(int x = 9; x < 16; x++) {
    for(int y = 24; y < 27; y++) {
      state[x][y] = colour1;
    }
  }
  state[11][24] = colour2;
  for(int x = 10; x < 16; x++) {
    state[x][27] = colour1;
  }
  for(int x = 11; x < 16; x++) {
    state[x][28] = colour1;
  }
}

void colourIronMan4thQuadrantOutOf4(int colour1, int colour2) {
  for(int x = 22; x < 25; x++) {
    for(int y = 16; y < 19; y++) {
      state[x][y] = colour1;
    }
  }
  state[22][19] = colour1;
  state[23][19] = colour1;
  state[22][20] = colour1;
  for(int x = 16; x < 22; x++) {
    for(int y = 16; y < 23; y++) {
      state[x][y] = colour1;
    }
  }
  state[19][23] = colour1;
  for(int x = 16; x < 22; x++) {
    for(int y = 24; y < 27; y++) {
      state[x][y] = colour1;
    }
  }
  state[19][24] = colour2;
  for(int x = 16; x < 21; x++) {
    state[x][27] = colour1;
  }
  for(int x = 16; x < 20; x++) {
    state[x][28] = colour1;
  }
}

void colourSpiderMan1stQuadrantOutOF4(int colour){
  state[14][9] = colour;
  for(int x = 13; x < 16; x++) {
    for(int y = 10; y < 14; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 8; x < 13; x++) {
      state[x][9] = colour;
  }
  for(int x = 5; x < 13; x++) {
      state[x][11] = colour;
  }
  for(int y = 8; y < 11; y++) {
      state[6][y] = colour;
  }
  for(int y = 5; y < 8; y++) {
      state[7][y] = colour;
  }
  for(int y = 3; y < 5; y++) {
      state[8][y] = colour;
  }
  for(int y = 6; y < 9; y++) {
      state[9][y] = colour;
  }
  for(int y = 3; y < 6; y++) {
      state[10][y] = colour;
  }
  state[14][14] = colour;
  state[15][14] = colour;
  state[12][15] = colour;
  state[13][15] = colour;
  state[14][15] = colour;
  state[15][15] = colour;
  state[12][13] = colour;
  state[11][13] = colour;
  state[10][14] = colour;
  state[9][14] = colour;
  state[8][14] = colour;
  state[7][15] = colour;
  state[6][15] = colour;
}

void colourSpiderMan2ndQuadrantOutOF4(int colour){
  state[16][9] = colour;
  for(int x = 16; x < 18; x++) {
    for(int y = 10; y < 14; y++) {
      state[x][y] = colour;
    }
  }
  for(int x = 18; x < 23; x++) {
      state[x][9] = colour;
  }
  for(int x =18 ; x < 26; x++) {
      state[x][11] = colour;
  }
  for(int y = 8; y < 11; y++) {
      state[24][y] = colour;
  }
  for(int y = 5; y < 8; y++) {
      state[23][y] = colour;
  }
  for(int y = 3; y < 5; y++) {
      state[22][y] = colour;
  }
  for(int y = 6; y < 9; y++) {
      state[21][y] = colour;
  }
  for(int y = 3; y < 6; y++) {
      state[20][y] = colour;
  }
  state[16][14] = colour;
  state[16][15] = colour;
  state[17][15] = colour;
  state[18][15] = colour;
  state[18][13] = colour;
  state[19][13] = colour;
  state[20][14] = colour;
  state[21][14] = colour;
  state[22][14] = colour;
  state[23][15] = colour;
  state[24][15] = colour;
}

void colourSpiderMan3rdQuadrantOutOF4(int colour){
  for(int y = 17; y < 21; y++) {
    state[4][y] = colour;
  }
  for(int y = 21; y < 24; y++) {
    state[5][y] = colour;
  }
  for(int y = 24; y < 27; y++) {
    state[6][y] = colour;
  }
  state[5][16] = colour;
  state[11][16] = colour;
  for(int y = 17; y < 23; y++) {
    state[10][y] = colour;
  }
  for(int y = 23; y < 29; y++) {
    state[11][y] = colour;
  }
  for(int x = 13; x < 16; x++) {
    for(int y = 16; y < 22; y++) {
      state[x][y] = colour;
    }
  }
  state[14][22] = colour;
  state[15][22] = colour;
  state[15][23] = colour;
}

void colourSpiderMan4thQuadrantOutOF4(int colour){
  for(int y = 17; y < 21; y++) {
    state[26][y] = colour;
  }
  for(int y = 21; y < 24; y++) {
    state[25][y] = colour;
  }
  for(int y = 24; y < 27; y++) {
    state[24][y] = colour;
  }
  state[25][16] = colour;
  state[19][16] = colour;
  for(int y = 17; y < 23; y++) {
    state[20][y] = colour;
  }
  for(int y = 23; y < 29; y++) {
    state[19][y] = colour;
  }
  for(int x = 16; x < 18; x++) {
    for(int y = 16; y < 22; y++) {
      state[x][y] = colour;
    }
  }
  state[16][22] = colour;
}

void drawRandomPoppingOffCircleBadgeAnimation(){
  int select = int(random(0,3));
  if(select==0) {
    IronManAnimation1();
  }
  if(select==1) {
    SpiderManAnimation1();
  }
  if(select==2) {
    CaptainAmericaAnimation1();
  }
}

void IronManMainBadgeAnimation() {
  colourBadgeCircle(1);
  colourIronManFace(3,1);
  colourIronManEyes(4);
}

void IronManAnimation1() {
  int randomColour1 = int(random(0,5));
  int randomColour2 = int(random(0,5));
  int randomColour3 = int(random(0,5));
  colourBadgeCircle(randomColour1);
  colourIronManFace(randomColour2,randomColour1);
  colourIronManEyes(randomColour3);
}

void SpiderManMainBadgeAnimation() {
  colourBadgeCircle(1);
  colourSpiderOnSpidermanBagde(0);
}

void SpiderManAnimation1() {
  int randomColour1 = int(random(0,5));
  int randomColour2 = int(random(0,5));
  colourBadgeCircle(randomColour1);
  colourSpiderOnSpidermanBagde(randomColour2);
}

void CaptainAmericaMainBadgeAnimation() {
  colourBadgeCircle(1);
  colourInnerRingForCaptainAmerica(4);
  colourInnerCircleCaptainAmerica(2);
  colourStarCaptainAmerica(4);
}

void CaptainAmericaAnimation1() {
  int randomColour1 = int(random(0,5));
  int randomColour2 = int(random(0,5));
  int randomColour3 = int(random(0,5));
  colourBadgeCircle(randomColour1);
  colourInnerRingForCaptainAmerica(randomColour2);
  colourInnerCircleCaptainAmerica(randomColour3);
  colourStarCaptainAmerica(randomColour2);
}

void colourStarCaptainAmerica(int colour) {
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

void colourInnerCircleCaptainAmerica(int colour) {
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

void colourInnerRingForCaptainAmerica(int colour) {
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

void colourSpiderOnSpidermanBagde(int colour) {
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

void colourIronManEyes(int colour) {
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

void colourIronManFace(int colour, int colour2) {
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
void colourBadgeCircle(int colour) {
  for(int x = 0; x < amount; x++) {
    for(int y = 13; y < 18; y++) {
      state[x][y] = colour;
      }
    }
    for(int x = 1; x < amount - 1; x++) {
    for(int y = 10; y < 13; y++) {
      state[x][y] = colour;
      }
    for(int y = 18; y < 21; y++) {
      state[x][y] = colour;
      }
    }
    for(int x = 2; x < amount - 2; x++) {
    for(int y = 7; y < 10; y++) {
      state[x][y] = colour;
      }
    for(int y = 21; y < 24; y++) {
      state[x][y] = colour;
      } 
    }
    for(int x = 3; x < amount - 3; x++) {
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
    for(int y = 3; y < amount - 3; y++) {
    for(int x = 5; x < 7; x++) {
      state[x][y] = colour;
      }
    for(int x = 24; x < 26; x++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 2; y < amount - 2; y++) {
    for(int x = 7; x < 10; x++) {
      state[x][y] = colour;
      }
    for(int x = 21; x < 24; x++) {
      state[x][y] = colour;
      } 
    }
    for(int y = 1; y < amount - 1; y++) {
    for(int x = 10; x < 13; x++) {
      state[x][y] = colour;
      }
    for(int x = 18; x < 21; x++) {
      state[x][y] = colour;
      }
    }
  for(int y = 0; y < amount; y++) {
    for(int x = 13; x < 18; x++) {
      state[x][y] = colour;
      }
    }
}

void colourBackground(int colour) {
  for(int x = 0; x < amount; x++) {
    for(int y = 0; y < amount; y++) {
      state[x][y] = colour;
    }
  }
}

}
