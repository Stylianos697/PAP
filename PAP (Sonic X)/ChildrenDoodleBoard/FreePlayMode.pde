class FreePlayMode {

  int amount = 31; // used to make the grids dimensions so if amount is 13 then grid is 13 by 13 so 169 tiles!!!
  int[][] state = new int[amount][amount];
  ; //keeps track of tiles state (what colour the tiles are).
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
//void setup() {
//  size(800, 700);

//  //backToNormal();

//  drawSkyWithSunAndGrass();

//  //drawBlankGrid();
//}

//void drawSkyWithSun() {
//  drawSky();
//  drawSun();
//}

//void moveOn() {
//  if(validateSkyWithSun()==true){
//    easyLevels();
//  }
//}

//boolean validateSkyWithSun() {
//  boolean validate = false;
//  if(validateSun()==true && validateSky()==true) {
//    validate = true;
//  }
//  return validate;
//}

//boolean validateSun() {
//    boolean validate = false;
//    //for (int x = 0; x < 4; x++) {
//    //for (int y = 0; y < 4; y++) {
//    //  if(state[x][y]==4){
//    //    validate = true;
//    //    }
//    //    else {
//    //      return false;
//    //    }
//    //  }
//    //}
//    if(getStateSpecificPart(0,4,0,4,4)==true){
//      validate = true;
//    }
//    else {
//      return false;
//    }
//    if(getStateSpecificPart(5,7,0,1,4)==true){
//      validate = true;
//    }
//    else {
//      return false;
//    }
//    if(getStateSpecificPart(5,7,2,3,4)==true){
//      validate = true;
//    }
//    else {
//      return false;
//    }
//    if(getStateSpecificPart(0,1,5,7,4)==true){
//      validate = true;
//    }
//    else {
//      return false;
//    }
//    if(getStateSpecificPart(2,3,5,7,4)==true){
//      validate = true;
//    }
//    else {
//      return false;
//    }
//    if(getStateTile(5,5,4)==true){
//      validate = true;
//    }
//    else {
//      return false;
//    }
//    if(getStateTile(6,6,4)==true){
//      validate = true;
//    }
//    else {
//      return false;
//    }
//     return validate;
//}
//if(getStateRowPartly(5,7,0)==4 && getStateRowPartly(5,7,2)==4
//&& getStateColumnPartly(5,7,0)==4 && getStateColumnPartly(5,7,2)==4
//&& getStateSpecific(5,5)==4 && getStateSpecific(6,6)==4) {
//  validate=true;
//}
//else {
//  return false;
//}
//for (int x = 5; x <7; x++) {
//for (int y = 0; y <1; y++) {
//  if(state[x][y]==4){
//    validate = true;
//    }
//    else {
//      return false;
//    }
//  }
//}
//for (int x = 0; x <1; x++) {
//for (int y = 5; y <7; y++) {
//  if(state[x][y]==4){
//    validate = true;
//    }
//    else {
//      return false;
//    }
//  }
//}
//for (int x = 2; x <3; x++) {
//for (int y = 5; y <7; y++) {
//  if(state[x][y]==4){
//    validate = true;
//    }
//    else {
//      return false;
//    }
//  }
//}
//for (int x = 5; x <7; x++) {
//for (int y = 2; y <3; y++) {
//  if(state[x][y]==4){
//    validate = true;
//    }
//    else {
//      return false;
//    }
//  }
//}
//for (int x = 5; x <6; x++) {
//for (int y = 5; y <6; y++) {
//  if(state[x][y]==4){
//    validate = true;
//    }
//    else {
//      return false;
//    }
//  }
//}
//for (int x = 6; x <7; x++) {
//for (int y = 6; y <7; y++) {
//  if(state[x][y]==4){
//    validate = true;
//    }
//    else {
//      return false;
//    }
//  }
//} // TRY AND IMPLEMENT THIS IN A WAY FOR YOUR GET STATE METHODS AS IT WORKS PERFECTLY

//boolean validateSky() {
//  boolean validate = false;//FIX WITH NEW METHOD YOU MADE!!!
//  if(getStateSpecificPart(0,amount,4,5,3)==true && getStateSpecificPart(4,5,0,amount,3)==true
//  && getStateSpecificPart(7,amount,0,amount,3)==true && getStateSpecificPart(0,amount,7,amount,3)==true ) {
//    validate = true;
//  }
//  else {
//    return false;
//  }
//  if(getStateSpecificPart(4,amount,1,2,3)==true && getStateSpecificPart(4,amount,3,4,3)==true
//  && getStateSpecificPart(1,2,4,amount,3)==true && getStateSpecificPart(3,4,4,amount,3)==true) {
//    validate = true;
//  }
//  else {
//    return false;
//  }
//  if(getStateTile(6,5,3)==true && getStateTile(5,6,3)==true) {
//    validate = true;
//  }
//  else {
//    return false;
//  }
//  return validate;
//}

//boolean validateSky() {
//  boolean validate = false;
//  for (int x = 0; x < amount; x++) {
//    for (int y = 0; y < amount; y++) {
//      if(getStateSpecific(x,7)==3) {
//        validate = true;
//      }
//    }
//  }
//  return validate;
//}

//boolean visited(int a, int b) {
//  boolean beenVisited = false;
//  for (int x = 0; x < amount; x++) {
//    for (int y = 0; y < amount; y++) {
//        getStateSpecific(a,b);
//        beenVisited = true;
//    }
//  }
//  return beenVisited;
//}

//boolean visitedRow(int row) {
//  boolean beenVisited = false;
//  int colourState = state[x][row];
//  getStateRow(colourState);
//  beenVisited = true;
//  return beenVisited;
//}

//boolean getStateSpecificPart(int xStart, int xFinish, int yStart, int yFinish, int colourState){
//  boolean validate = false;
//  for (int x = xStart; x < xFinish; x++) {
//    for (int y = yStart; y < yFinish; y++) {
//        if(state[x][y]==colourState) {
//          validate = true;
//        }
//        else {
//          return false;
//        }
//    }
//  }
//  return validate;
//}

//int getStateRow(int yCoordinate){
//  int colourState = 0;
//  for (int x = 0; x < amount; x++) {
//    for (int y = 0; y < amount; y++) {
//        //if(visitedRow(yCoordinate)==true) {
//        colourState = state[x][yCoordinate];
//        //}
//    }
//  }
//  return colourState;
//}

//int getStateColumnPartly(int yStart, int yFinish, int xCoordinate){
//  int colourState = 0;
//  for (int x = 0; x < amount; x++) {
//    for (int y = yStart; y < yFinish; y++) {
//        colourState = state[xCoordinate][y];
//    }
//  }
//  return colourState;
//}

//int getStateColumn(int xCoordinate){
//  int colourState = 0;
//  for (int x = 0; x < amount; x++) {
//    for (int y = 0; y < amount; y++) {
//        colourState = state[xCoordinate][y];
//    }
//  }
//  return colourState;
//}

//boolean gottenAllSpecificStates() {
//  boolean validate = false;
//  for (int x = 0; x < amount; x++) {
//    for (int y = 0; y < amount; y++) {
//      getStateSpecific(x,y);
//    }
//  }
//  validate = true;
//  return validate;
//}

//boolean getStateTile(int xCoordinate, int yCoordinate, int colourState){
//  boolean validate = false;;
//  for (int x = 0; x < amount; x++) {
//    for (int y = 0; y < amount; y++) {
//        if(state[xCoordinate][yCoordinate] == colourState) {
//          validate = true;
//        }
//        else {
//          return false;
//        }
//    }
//  }
//  return validate;
//}

//boolean validateGrass() {
//  boolean validate = false;
//  for (int x = 0; x < amount; x++) {
//    for (int y = 10; y < amount; y++) {
//      if(state[x][y]==2) {
//        validate = true;
//      }
//      else {
//        return false;
//      }
//    }
//  }
//  return validate;
//}

//void drawSun() {
//for (int x = 0; x < amount; x++) {
//    for (int y = 0; y < amount; y++) {
//      if((x < 4 && y < 4) ){
//    state[x][y] = 6;
//   // WORK ON THAT
//    }
//    else if(x > 4 && x < 7 && y==0){
//      state[x][y] = 6;
//    }
//    else if(y > 4 && y < 7 && x==0){
//      state[x][y] = 6;
//    }
//    else if(y > 4 && y < 7 && x==2){
//      state[x][y] = 6;
//    }
//    else if(x > 4 && x < 7 && y==2){
//      state[x][y] = 6;
//    }
//    else if(x==5 && y==5){
//      state[x][y] = 6;
//    }
//    else if(x==6 && y==6){
//      state[x][y] = 6;
//    }
//   }
// }
//}

//void drawSky() {
//for (int x = 0; x < amount; x++) {
//    for (int y = 0; y < amount; y++) {
//      if(y<13) {
//      state[x][y] = 8;
//      }
//    }
// }
//}

//void mediumLevels() {
//  int random = int(random(0,2));
//  if(random==0){
//    drawSkyWithSun();
//  }
//  if(random==1){
//    drawBlankGrid();
//  }
//}

//void easyLevels() {
//  drawBlankGrid();
//}

//void drawBlankGrid() {
//  //background(#f1f1f1);

//  //float tileW = width/amount;
//  //float tileH = height/amount;
//  //noStroke();
//  //ellipseMode(CORNER);

//  //mx = int(map(mouseX, 0, width, 0, amount));
//  //my = int(map(mouseY, 0, height, 0, amount));

//  for (int x = 0; x < amount; x++) {
//    for (int y = 0; y < amount; y++) {
//      state[x][y] = 6;
//    }
//  }
//}

//void backToNormal(){
//  drawSkyWithSunAndGrass();

//  delay(10000);

//  drawBlankGrid();
//}
