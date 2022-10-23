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

// ---SEE---

//S section of SEE
void drawGreySwithWhiteBackground() {
  for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 6;
      }
    }
    colourS(8);
}

void drawBlackSwithGreyBackground() {
  for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 8;
      }
    }
    colourS(0);
}

void drawWhiteSwithBlackBackground() {
  for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 0;
      }
    }
    colourS(6);
}

void drawRandomAnimationOfS() {
  int select = int(random(0,3));
  if(select==0) {
    drawGreySwithWhiteBackground();
  }
  if(select==1) {
    drawBlackSwithGreyBackground();
  }
  if(select==2) {
    drawWhiteSwithBlackBackground();
  }
}

//E(1) section of SEE
//E(2) section of SEE
void drawGreyEwithWhiteBackground() {
  for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 6;
      }
    }
    colourE(8);
}

void drawBlackEwithGreyBackground() {
  for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 8;
      }
    }
    colourE(0);
}

void drawWhiteEwithBlackBackground() {
  for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 0;
      }
    }
    colourE(6);
}

void drawRandomAnimationOfEForSee() {
  int select = int(random(0,3));
  if(select==0) {
    drawGreyEwithWhiteBackground();
  }
  if(select==1) {
    drawBlackEwithGreyBackground();
  }
  if(select==2) {
    drawWhiteEwithBlackBackground();
  }
}

// ---THE---

//T section of THE
void drawOrangeTwithYellowBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 4;
      }
    }
    colourT(7);
}

void drawBrownTwithOrangeBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 7;
      }
    }
    colourT(5);
}

void drawYellowTwithBrownBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 5;
      }
    }
    colourT(4);
}

void drawRandomAnimationOfT() {
  int select = int(random(0,3));
  if(select==0) {
    drawOrangeTwithYellowBackground();
  }
  if(select==1) {
    drawBrownTwithOrangeBackground();
  }
  if(select==2) {
    drawYellowTwithBrownBackground();
  }
}

//H section of THE
void drawOrangeHwithYellowBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 4;
      }
    }
    colourH(7);
}

void drawBrownHwithOrangeBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 7;
      }
    }
    colourH(5);
}

void drawYellowHwithBrownBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 5;
      }
    }
    colourH(4);
}

void drawRandomAnimationOfH() {
  int select = int(random(0,3));
  if(select==0) {
    drawOrangeHwithYellowBackground();
  }
  if(select==1) {
    drawBrownHwithOrangeBackground();
  }
  if(select==2) {
    drawYellowHwithBrownBackground();
  }
}

//E section of THE
void drawOrangeEwithYellowBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 4;
      }
    }
    colourE(7);
}

void drawBrownEwithOrangeBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 7;
      }
    }
    colourE(5);
}

void drawYellowEwithBrownBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 5;
      }
    }
    colourE(4);
}

void drawRandomAnimationOfE() {
  int select = int(random(0,3));
  if(select==0) {
    drawOrangeEwithYellowBackground();
  }
  if(select==1) {
    drawBrownEwithOrangeBackground();
  }
  if(select==2) {
    drawYellowEwithBrownBackground();
  }
}

// ---BIO---

//B section of BIO
void drawBlueBwithGreenBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 2;
      }
    }
    colourB(3);
}

void drawPurpleBwithBlueBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 3;
      }
    }
    colourB(9);
}

void drawGreenBwithPurpleBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 9;
      }
    }
    colourB(2);
}

void drawRandomBAnimation() {
  int select = int(random(0,3));
  if(select==0) {
    drawBlueBwithGreenBackground();
  }
  if(select==1) {
    drawPurpleBwithBlueBackground();
  }
  if(select==2) {
    drawGreenBwithPurpleBackground();
  }
}

//I section of BIO
void drawBlueIwithGreenBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 2;
      }
    }
    colourI(3);
}

void drawPurpleIwithBlueBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 3;
      }
    }
    colourI(9);
}

void drawGreenIwithPurpleBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 9;
      }
    }
    colourI(2);
}

void drawRandomIAnimation() {
  int select = int(random(0,3));
  if(select==0) {
    drawBlueIwithGreenBackground();
  }
  if(select==1) {
    drawPurpleIwithBlueBackground();
  }
  if(select==2) {
    drawGreenIwithPurpleBackground();
  }
}

//O section of BIO
void drawBlueOwithGreenBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 2;
      }
    }
    colourO(3);
}

void drawPurpleOwithBlueBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 3;
      }
    }
    colourO(9);
}

void drawGreenOwithPurpleBackground() {
    for(int x = 0; x < amount; x++) {
      for(int y = 0; y < amount; y++) {
        state[x][y] = 9;
      }
    }
    colourO(2);
}

void drawRandomOAnimation() {
  int select = int(random(0,3));
  if(select==0) {
    drawBlueOwithGreenBackground();
  }
  if(select==1) {
    drawPurpleOwithBlueBackground();
  }
  if(select==2) {
    drawGreenOwithPurpleBackground();
  }
}

void colourS(int colour) {
  for(int x = 8; x < 16; x++) {
    state[x][3] = colour;
    state[x][19] = colour;
  }
  for(int x = 9; x < 15; x++) {
    state[x][11] = colour;
  }
  
  state[7][4] = colour;
  state[16][18] = colour;
  state[16][4] = colour;
  state[17][5] = colour;
  state[7][18] = colour;
  state[6][17] = colour;
  
  for(int y = 5; y < 9; y++) {
    state[6][y] = colour;
  }
  for(int y = 14; y < 18; y++) {
    state[17][y] = colour;
  }
  
  state[7][8] = colour;
  state[7][9] = colour;
  state[8][9] = colour;
  state[8][10] = colour;
  state[9][10] = colour;
  state[16][14] = colour;
  state[16][13] = colour;
  state[15][13] = colour;
  state[15][12] = colour;
  state[14][12] = colour;
}

void colourT(int colour) {
  for(int x = 6; x < 18; x++) {
    state[x][3] = colour;
    state[x][4] = colour;
  }
  for(int y = 5; y < 20; y++) {
    state[11][y] = colour;
    state[12][y] = colour;
  }
}

void colourH(int colour) {
  for(int x = 6; x < 18; x++) {
    state[x][11] = colour;
  }
  for(int y = 3; y < 20; y++) {
    state[5][y] = colour;
    state[18][y] = colour;
  }
}

void colourE(int colour) {
  for(int x = 7; x < 18; x++) {
    state[x][3] = colour;
    state[x][11] = colour;
    state[x][19] = colour;
  }
  for(int y = 3; y < 20; y++) {
    state[6][y] = colour;
  }
}

void colourB(int colour) {
  for(int y = 3; y < 20; y++) {
    state[6][y] = colour;
  }
  for(int x = 6; x < 16; x++) {
    state[x][3] = colour;
  }
  
  state[15][4] = colour;
  state[16][4] = colour;
  state[16][5] = colour;
  state[17][5] = colour;
  state[17][6] = colour;
  state[17][7] = colour;
  state[17][8] = colour;
  state[17][9] = colour;
  state[16][9] = colour;
  state[16][10] = colour;
  state[15][10] = colour;
  
  for(int x = 6; x < 16; x++) {
    state[x][11] = colour;
  }
  
  state[15][12] = colour;
  state[16][12] = colour;
  state[16][13] = colour;
  state[17][13] = colour;
  state[17][14] = colour;
  state[17][15] = colour;
  state[17][16] = colour;
  state[17][17] = colour;
  state[16][17] = colour;
  state[16][18] = colour;
  state[15][18] = colour;
  
  for(int x = 6; x < 16; x++) {
    state[x][19] = colour;
  }
}

void colourI(int colour) {
  for(int y = 3; y < 20; y++) {
    state[11][y] = colour;
    state[12][y] = colour;
  }
}

void colourO(int colour) {
  for(int x = 7; x < 17; x++) {
    state[x][3] = colour;
    state[x][19] = colour;
  }
  
  state[7][4] = colour;
  state[6][4] = colour;
  state[6][5] = colour;
  state[16][4] = colour;
  state[17][4] = colour;
  state[17][5] = colour;
  
  state[6][17] = colour;
  state[6][18] = colour;
  state[7][18] = colour;
  state[16][18] = colour;
  state[17][18] = colour;
  state[17][17] = colour;
  
  for(int y = 5; y < 18; y++) {
    state[5][y] = colour;
    state[18][y] = colour;
  }  
}

}
