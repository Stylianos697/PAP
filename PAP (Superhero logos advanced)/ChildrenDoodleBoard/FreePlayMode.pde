class FreePlayMode{ 
  
int amount = 31; // used to make the grids dimensions so if amount is 13 then grid is 13 by 13 so 169 tiles!!!
int[][] state = new int[amount][amount];; //keeps track of tiles state (what colour the tiles are).
int mx, my;
int x, y;

FreePlayMode() {
  //amount = int(random(8,41));
  state = new int[amount][amount];
}

void countUp(int x, int y) {
  if (state[x][y] < 4) 
  {
    state[x][y]++; 
  } else {
    state[x][y] = 0; 
  }
}

void mouseReleased() {
  countUp(mx, my); 
}

}
