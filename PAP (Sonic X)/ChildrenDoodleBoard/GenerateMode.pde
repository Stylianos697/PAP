import java.util.Random;
import java.util.Scanner;

class GenerateMode {
  int amount = 100; // used to make the grids dimensions so if amount is 13 then grid is 13 by 13 so 169 tiles!!!
  int[][] state; //keeps track of tiles state (what colour the tiles are).
  int mx, my;
  int x, y;
  GenerateMode() {
    //amount = int(random(8,41));
    state = new int[amount][amount];
  }

  void backgroundGreyWhiteAndBrownMix() {
    ArrayList<Integer> coloursForSonic = new ArrayList<Integer>();
    coloursForSonic.add(0);
    coloursForSonic.add(6);
    coloursForSonic.add(8);
    Random rand1 = new Random();
    Random rand2 = new Random();
    Random rand3 = new Random();
    Random rand4 = new Random();
    Random rand5 = new Random();
    Random rand6 = new Random();
    Random rand7 = new Random();
    Random rand8 = new Random();
    Random rand9 = new Random();
    Random rand10 = new Random();
    Random rand11 = new Random();
    Random rand12 = new Random();
    Random rand13 = new Random();
    Random rand14 = new Random();
    Random rand15 = new Random();
    Random rand16 = new Random();
    int randomColour1 = coloursForSonic.get(rand1.nextInt(coloursForSonic.size()));
    int randomColour2 = coloursForSonic.get(rand2.nextInt(coloursForSonic.size()));
    int randomColour3 = coloursForSonic.get(rand3.nextInt(coloursForSonic.size()));
    int randomColour4 = coloursForSonic.get(rand4.nextInt(coloursForSonic.size()));
    int randomColour5 = coloursForSonic.get(rand5.nextInt(coloursForSonic.size()));
    int randomColour6 = coloursForSonic.get(rand6.nextInt(coloursForSonic.size()));
    int randomColour7 = coloursForSonic.get(rand7.nextInt(coloursForSonic.size()));
    int randomColour8 = coloursForSonic.get(rand8.nextInt(coloursForSonic.size()));
    int randomColour9 = coloursForSonic.get(rand9.nextInt(coloursForSonic.size()));
    int randomColour10 = coloursForSonic.get(rand10.nextInt(coloursForSonic.size()));
    int randomColour11 = coloursForSonic.get(rand11.nextInt(coloursForSonic.size()));
    int randomColour12 = coloursForSonic.get(rand12.nextInt(coloursForSonic.size()));
    int randomColour13 = coloursForSonic.get(rand13.nextInt(coloursForSonic.size()));
    int randomColour14 = coloursForSonic.get(rand14.nextInt(coloursForSonic.size()));
    int randomColour15 = coloursForSonic.get(rand15.nextInt(coloursForSonic.size()));
    int randomColour16 = coloursForSonic.get(rand16.nextInt(coloursForSonic.size()));
    colourBackground1of16Quadrant(randomColour1);
    colourBackground2of16Quadrant(randomColour2);
    colourBackground3of16Quadrant(randomColour3);
    colourBackground4of16Quadrant(randomColour4);
    colourBackground5of16Quadrant(randomColour5);
    colourBackground6of16Quadrant(randomColour6);
    colourBackground7of16Quadrant(randomColour7);
    colourBackground8of16Quadrant(randomColour8);
    colourBackground9of16Quadrant(randomColour9);
    colourBackground10of16Quadrant(randomColour10);
    colourBackground11of16Quadrant(randomColour11);
    colourBackground12of16Quadrant(randomColour12);
    colourBackground13of16Quadrant(randomColour13);
    colourBackground14of16Quadrant(randomColour14);
    colourBackground15of16Quadrant(randomColour15);
    colourBackground16of16Quadrant(randomColour16);
  }

  void backgroundMadness() {
    int randomColour1 = int(random(0,11));
    int randomColour2 = int(random(0,11));
    int randomColour3 = int(random(0,11));
    int randomColour4 = int(random(0,11));
    int randomColour5 = int(random(0,11));
    int randomColour6 = int(random(0,11));
    int randomColour7 = int(random(0,11));
    int randomColour8 = int(random(0,11));
    int randomColour9 = int(random(0,11));
    int randomColour10 = int(random(0,11));
    int randomColour11 = int(random(0,11));
    int randomColour12 = int(random(0,11));
    int randomColour13 = int(random(0,11));
    int randomColour14 = int(random(0,11));
    int randomColour15 = int(random(0,11));
    int randomColour16 = int(random(0,11));
    colourBackground1of16Quadrant(randomColour1);
    colourBackground2of16Quadrant(randomColour2);
    colourBackground3of16Quadrant(randomColour3);
    colourBackground4of16Quadrant(randomColour4);
    colourBackground5of16Quadrant(randomColour5);
    colourBackground6of16Quadrant(randomColour6);
    colourBackground7of16Quadrant(randomColour7);
    colourBackground8of16Quadrant(randomColour8);
    colourBackground9of16Quadrant(randomColour9);
    colourBackground10of16Quadrant(randomColour10);
    colourBackground11of16Quadrant(randomColour11);
    colourBackground12of16Quadrant(randomColour12);
    colourBackground13of16Quadrant(randomColour13);
    colourBackground14of16Quadrant(randomColour14);
    colourBackground15of16Quadrant(randomColour15);
    colourBackground16of16Quadrant(randomColour16);
  }

  void completeTheSonic() {
    int randomColour = int(random(0, 11));
    int choose = int(random(0, 12));
    if (choose==0) {
      drawSonic1stQuadrant();
    }
    if (choose==1) {
      drawSonic2ndQuadrant();
    }
    if (choose==2) {
      drawSonic3rdQuadrant();
    }
    if (choose==3) {
      drawSonic4thQuadrant();
    }
    if (choose==4) {
      colourBackground1stQuadrant(randomColour);
    }
    if (choose==5) {
      colourBackground2ndQuadrant(randomColour);
    }
    if (choose==6) {
      colourBackground3rdQuadrant(randomColour);
    }
    if (choose==7) {
      colourBackground4thQuadrant(randomColour);
    }
    if (choose==8) {
      drawSonic1stQuadrant();
      drawSonic2ndQuadrant();
    }
    if (choose==9) {
      drawSonic3rdQuadrant();
      drawSonic4thQuadrant();
    }
    if (choose==10) {
      drawSonic1stQuadrant();
      drawSonic4thQuadrant();
    }
    if (choose==11) {
      drawSonic2ndQuadrant();
      drawSonic3rdQuadrant();
    }
  }

  void randomizedColouredQuadrants() {
    int random1stQuadrant = int(random(0,3));
    int random2ndQuadrant = int(random(0,3));
    int random3rdQuadrant = int(random(0,3));
    int random4thQuadrant = int(random(0,3));
    if(random1stQuadrant==0) {
      drawRedAndGreenSonic1stQuadrant();
    }
    if(random1stQuadrant==1) {
      drawPurpleAndPinkSonic1stQuadrant();
    }
    if(random1stQuadrant==2) {
      drawBlackAndOrangeSonic1stQuadrant();
    }
    if(random2ndQuadrant==0) {
      drawRedAndGreenSonic2ndQuadrant();
    }
    if(random2ndQuadrant==1) {
      drawPurpleAndPinkSonic2ndQuadrant();
    }
    if(random2ndQuadrant==2) {
      drawBlackAndOrangeSonic2ndQuadrant();
    }
    if(random3rdQuadrant==0) {
      drawRedAndGreenSonic3rdQuadrant();
    }
    if(random3rdQuadrant==1) {
      drawPurpleAndPinkSonic3rdQuadrant();
    }
    if(random3rdQuadrant==2) {
      drawBlackAndOrangeSonic3rdQuadrant();
    }
    if(random4thQuadrant==0) {
      drawRedAndGreenSonic4thQuadrant();
    }
    if(random4thQuadrant==1) {
      drawPurpleAndPinkSonic4thQuadrant();
    }
    if(random4thQuadrant==2) {
      drawBlackAndOrangeSonic4thQuadrant();
    }
  }

  void drawSonic1stQuadrant() {
    colourSonicsEyes1stQuadrant(6, 2, 5);
    colourSonicsHead1stQuadrant(3);
    colourSonicsMouth1stQuadrant(4, 6);
    colourSonicsHeadOutline1stQuadrant(8);
    colourSonicsHands1stQuadrant(6);
    colourSonicsHandsOutline1stQuadrant(8);
    colourSonicsNose(5, 6);
  }

  void drawRedAndGreenSonic1stQuadrant() {
    colourSonicsEyes1stQuadrant(6, 2, 5);
    colourSonicsHead1stQuadrant(1);
    colourSonicsMouth1stQuadrant(2, 6);
    colourSonicsHeadOutline1stQuadrant(8);
    colourSonicsHands1stQuadrant(6);
    colourSonicsHandsOutline1stQuadrant(8);
    colourSonicsNose(5, 6);
  }

  void drawPurpleAndPinkSonic1stQuadrant() {
    colourSonicsEyes1stQuadrant(6, 2, 5);
    colourSonicsHead1stQuadrant(10);
    colourSonicsMouth1stQuadrant(9, 6);
    colourSonicsHeadOutline1stQuadrant(8);
    colourSonicsHands1stQuadrant(6);
    colourSonicsHandsOutline1stQuadrant(8);
    colourSonicsNose(5, 6);
  }
  
  void drawBlackAndOrangeSonic1stQuadrant() {
    colourSonicsEyes1stQuadrant(6, 2, 5);
    colourSonicsHead1stQuadrant(5);
    colourSonicsMouth1stQuadrant(7, 6);
    colourSonicsHeadOutline1stQuadrant(8);
    colourSonicsHands1stQuadrant(6);
    colourSonicsHandsOutline1stQuadrant(8);
    colourSonicsNose(5, 6);
  }
  
  void drawSonic2ndQuadrant() {
    colourSonicsEyes2ndQuadrant(6);
    colourSonicsHead2ndQuadrant(3, 4);
    colourSonicsMouth2ndQuadrant(4, 6);
    colourSonicsHeadOutline2ndQuadrant(8);
    colourSonicsHands2ndQuadrant(6);
    colourSonicsHandsOutline2ndQuadrant(8);
  }

  void drawRedAndGreenSonic2ndQuadrant() {
    colourSonicsEyes2ndQuadrant(6);
    colourSonicsHead2ndQuadrant(1, 2);
    colourSonicsMouth2ndQuadrant(2, 6);
    colourSonicsHeadOutline2ndQuadrant(8);
    colourSonicsHands2ndQuadrant(6);
    colourSonicsHandsOutline2ndQuadrant(8);
  }
  
  void drawPurpleAndPinkSonic2ndQuadrant() {
    colourSonicsEyes2ndQuadrant(6);
    colourSonicsHead2ndQuadrant(10, 9);
    colourSonicsMouth2ndQuadrant(9, 6);
    colourSonicsHeadOutline2ndQuadrant(8);
    colourSonicsHands2ndQuadrant(6);
    colourSonicsHandsOutline2ndQuadrant(8);
  }
  
  void drawBlackAndOrangeSonic2ndQuadrant() {
    colourSonicsEyes2ndQuadrant(6);
    colourSonicsHead2ndQuadrant(5, 7);
    colourSonicsMouth2ndQuadrant(7, 6);
    colourSonicsHeadOutline2ndQuadrant(8);
    colourSonicsHands2ndQuadrant(6);
    colourSonicsHandsOutline2ndQuadrant(8);
  }
  
  void drawSonic3rdQuadrant() {
    colourSonicsHead3rdQuadrant(3);
    colourSonicsHeadOutline3rdQuadrant(8);
    colourSonicsHands3rdQuadrant(6);
    colourSonicsHandsOutline3rdQuadrant(8);
    colourSonicsBody3rdQuadrant(3);
    colourSonicsBodyOutline3rdQuadrant(8);
    colourSonicsShoes3rdQuadrant(1, 6);
    colourShoesOutline3rdQuadrant(8);
  }

  void drawRedAndGreenSonic3rdQuadrant() {
    colourSonicsHead3rdQuadrant(1);
    colourSonicsHeadOutline3rdQuadrant(8);
    colourSonicsHands3rdQuadrant(6);
    colourSonicsHandsOutline3rdQuadrant(8);
    colourSonicsBody3rdQuadrant(1);
    colourSonicsBodyOutline3rdQuadrant(8);
    colourSonicsShoes3rdQuadrant(1, 6);
    colourShoesOutline3rdQuadrant(8);
  }

  void drawPurpleAndPinkSonic3rdQuadrant() {
    colourSonicsHead3rdQuadrant(10);
    colourSonicsHeadOutline3rdQuadrant(8);
    colourSonicsHands3rdQuadrant(6);
    colourSonicsHandsOutline3rdQuadrant(8);
    colourSonicsBody3rdQuadrant(10);
    colourSonicsBodyOutline3rdQuadrant(8);
    colourSonicsShoes3rdQuadrant(1, 6);
    colourShoesOutline3rdQuadrant(8);
  }
  
  void drawBlackAndOrangeSonic3rdQuadrant() {
    colourSonicsHead3rdQuadrant(5);
    colourSonicsHeadOutline3rdQuadrant(8);
    colourSonicsHands3rdQuadrant(6);
    colourSonicsHandsOutline3rdQuadrant(8);
    colourSonicsBody3rdQuadrant(5);
    colourSonicsBodyOutline3rdQuadrant(8);
    colourSonicsShoes3rdQuadrant(1, 6);
    colourShoesOutline3rdQuadrant(8);
  }
  
  void drawSonic4thQuadrant() {
    colourSonicsHands4thQuadrant(6);
    colourSonicsHandsOutline4thQuadrant(8);
    colourSonicsBody4thQuadrant(3, 4);
    colourSonicsBodyOutline4thQuadrant(8);
    colourSonicsShoes4thQuadrant(1, 6);
    colourShoesOutline4thQuadrant(8);
  }
  
  void drawRedAndGreenSonic4thQuadrant() {
    colourSonicsHands4thQuadrant(6);
    colourSonicsHandsOutline4thQuadrant(8);
    colourSonicsBody4thQuadrant(1, 2);
    colourSonicsBodyOutline4thQuadrant(8);
    colourSonicsShoes4thQuadrant(1, 6);
    colourShoesOutline4thQuadrant(8);
  }
  
  void drawPurpleAndPinkSonic4thQuadrant() {
    colourSonicsHands4thQuadrant(6);
    colourSonicsHandsOutline4thQuadrant(8);
    colourSonicsBody4thQuadrant(10, 9);
    colourSonicsBodyOutline4thQuadrant(8);
    colourSonicsShoes4thQuadrant(1, 6);
    colourShoesOutline4thQuadrant(8);
  }
  
  void drawBlackAndOrangeSonic4thQuadrant() {
    colourSonicsHands4thQuadrant(6);
    colourSonicsHandsOutline4thQuadrant(8);
    colourSonicsBody4thQuadrant(5, 7);
    colourSonicsBodyOutline4thQuadrant(8);
    colourSonicsShoes4thQuadrant(1, 6);
    colourShoesOutline4thQuadrant(8);
  }
  
  void poppingOffEyesGlovesShoesOrNose() {
    colourSonicsEyes(6, 2, 5);
    colourSonicsNose(5, 6);
    colourSonicsMouth(4, 6);
    colourSonicsShoes(1, 6);
    colourSonicsBody(3, 4);
    colourSonicsBodyOutline(8);
    colourShoesOutline(8);
    colourSonicsHandsOutline(8);
    colourSonicsHands(6);
    colourSonicsHead(3, 4);
    colourSonicsHeadOutline(8);
    ArrayList<Integer> coloursForSonic = new ArrayList<Integer>();
    coloursForSonic.add(1);
    coloursForSonic.add(2);
    coloursForSonic.add(3);
    coloursForSonic.add(4);
    coloursForSonic.add(5);
    coloursForSonic.add(7);
    coloursForSonic.add(9);
    coloursForSonic.add(10);
    Random rand1 = new Random();
    Random rand2 = new Random();
    int randomColour1 = coloursForSonic.get(rand1.nextInt(coloursForSonic.size()));
    int randomColour2 = coloursForSonic.get(rand2.nextInt(coloursForSonic.size()));
    int choosePopOff = int(random(0, 4));
    if (choosePopOff==0) {
      colourSonicsHands(randomColour1);
    }
    if (choosePopOff==1) {
      colourSonicsEyes(6, randomColour1, 5);
    }
    if (choosePopOff==2) {
      colourSonicsShoes(randomColour1, randomColour2);
    }
    if (choosePopOff==3) {
      colourSonicsNose(randomColour2, 6);
    }
  }

  void randomColouredFourQuadrantsSonic() {
    ArrayList<Integer> coloursForSonic = new ArrayList<Integer>();
    coloursForSonic.add(1);
    coloursForSonic.add(2);
    coloursForSonic.add(3);
    coloursForSonic.add(4);
    coloursForSonic.add(5);
    coloursForSonic.add(7);
    coloursForSonic.add(9);
    coloursForSonic.add(10);
    Random rand1 = new Random();
    Random rand2 = new Random();
    Random rand3 = new Random();
    Random rand4 = new Random();
    Random rand5 = new Random();
    Random rand6 = new Random();
    Random rand7 = new Random();
    Random rand8 = new Random();
    int randomColourEyes = coloursForSonic.get(rand1.nextInt(coloursForSonic.size()));
    int randomColourMouth = coloursForSonic.get(rand2.nextInt(coloursForSonic.size()));
    int randomColourBody1 = coloursForSonic.get(rand3.nextInt(coloursForSonic.size()));
    int randomColourBody2 = coloursForSonic.get(rand4.nextInt(coloursForSonic.size()));
    int randomColourHead1 = coloursForSonic.get(rand5.nextInt(coloursForSonic.size()));
    int randomColourHead2 = coloursForSonic.get(rand6.nextInt(coloursForSonic.size()));
    int randomColourShoes1 = coloursForSonic.get(rand7.nextInt(coloursForSonic.size()));
    int randomColourShoes2 = coloursForSonic.get(rand8.nextInt(coloursForSonic.size()));
    ArrayList<Integer> coloursForSonicsHands = new ArrayList<Integer>();
    coloursForSonicsHands.add(1);
    coloursForSonicsHands.add(2);
    coloursForSonicsHands.add(3);
    coloursForSonicsHands.add(4);
    coloursForSonicsHands.add(5);
    coloursForSonicsHands.add(6);
    coloursForSonicsHands.add(7);
    coloursForSonicsHands.add(9);
    coloursForSonicsHands.add(10);
    Random rand9 = new Random();
    int randomColourHands = coloursForSonicsHands.get(rand9.nextInt(coloursForSonicsHands.size()));
    colourSonicsHeadOutline(8);
    colourSonicsHandsOutline(8);
    colourSonicsBodyOutline(8);
    colourShoesOutline(8);
    colourSonicsNose(5, 6);
    int chooseQuadrant = int(random(0, 4));
    if (chooseQuadrant==0) {
      colourSonicsHands1stQuadrant(randomColourHands);
      colourSonicsHead1stQuadrant(randomColourHead1);
      colourSonicsEyes1stQuadrant(6, randomColourEyes, 5);
      colourSonicsMouth1stQuadrant(randomColourMouth, 6);
    }
    if (chooseQuadrant==1) {
      colourSonicsEyes2ndQuadrant(6);
      colourSonicsMouth2ndQuadrant(randomColourMouth, 6);
      colourSonicsHands2ndQuadrant(randomColourHands);
      colourSonicsHead2ndQuadrant(randomColourHead1, randomColourHead2);
    }
    if (chooseQuadrant==2) {
      colourSonicsHead3rdQuadrant(randomColourHead1);
      colourSonicsHands3rdQuadrant(randomColourHands);
      colourSonicsShoes3rdQuadrant(randomColourShoes1, randomColourShoes2);
      colourSonicsBody3rdQuadrant(randomColourBody1);
    }
    if (chooseQuadrant==3) {
      colourSonicsHands4thQuadrant(randomColourHands);
      colourSonicsShoes4thQuadrant(randomColourShoes1, randomColourShoes2);
      colourSonicsBody4thQuadrant(randomColourBody1, randomColourBody2);
    }
  }

  void randomColouredOutlineAndBackground() {
    int randomColour = int(random(0, 11));
    int randomColourBackground = int(random(0, 11));
    colourBackground(randomColourBackground);
    colourSonicsEyes(6, 2, 5);
    colourSonicsNose(5, 6);
    colourSonicsMouth(4, 6);
    colourSonicsShoes(1, 6);
    colourSonicsBody(3, 4);
    colourSonicsBodyOutline(randomColour);
    colourShoesOutline(randomColour);
    colourSonicsHandsOutline(randomColour);
    colourSonicsHands(6);
    colourSonicsHead(3, 4);
    colourSonicsHeadOutline(randomColour);
  }

  void disappearAndAppear() {
    int randomNum = int(random(0, 16));
    if (randomNum==0) {
      colourSonicsEyes(6, 2, 5);
    }
    if (randomNum==1) {
      colourSonicsShoes(1, 6);
    }
    if (randomNum==2) {
      colourSonicsMouth(4, 6);
      colourSonicsNose(5, 6);
    }
    if (randomNum==3) {
      colourSonicsBody(3, 4);
    }
    if (randomNum==4) {
      colourShoesOutline(8);
    }
    if (randomNum==5) {
      colourSonicsBodyOutline(8);
    }
    if (randomNum==6) {
      colourSonicsHands(6);
    }
    if (randomNum==7) {
      colourSonicsHandsOutline(8);
    }
    if (randomNum==8) {
      colourSonicsHandsOutline(0);
      colourSonicsHands(0);
    }
    if (randomNum==9) {
      colourSonicsBodyOutline(0);
      colourSonicsBody(0, 0);
    }
    if (randomNum==10) {
      colourShoesOutline(0);
      colourSonicsShoes(0, 0);
    }
    if (randomNum==11) {
      colourSonicsMouth(0, 0);
      colourSonicsNose(0, 0);
    }
    if (randomNum==12) {
      colourSonicsEyes(0, 0, 0);
    }
    if (randomNum==13) {
      colourSonicsHead(3, 4);
    }
    if (randomNum==14) {
      colourSonicsHeadOutline(8);
    }
    if (randomNum==15) {
      colourSonicsHead(0, 0);
      colourSonicsHeadOutline(0);
    }
  }

  //***TO BE COMPLETED***
  //MAKE A LIST WITH NUMBERS
  //DON'T ADD NUMBER 8 ON THAT LIST
  //SO OUTLINE COLOUR DOESN'T CHANGE!
  //ALSO SO FUR DOES NOT CHANGE TO WHITE!!!
  void randomizedSonic() {
    //Shoes and hands
    ArrayList<Integer> coloursForSonicsShoesAndHands = new ArrayList<Integer>();
    coloursForSonicsShoesAndHands.add(1);
    coloursForSonicsShoesAndHands.add(2);
    coloursForSonicsShoesAndHands.add(3);
    coloursForSonicsShoesAndHands.add(4);
    coloursForSonicsShoesAndHands.add(5);
    coloursForSonicsShoesAndHands.add(6);
    coloursForSonicsShoesAndHands.add(7);
    coloursForSonicsShoesAndHands.add(9);
    coloursForSonicsShoesAndHands.add(10);
    Random rand1 = new Random();
    Random rand2 = new Random();
    Random rand3 = new Random();
    Integer randomColourForShoes1 = coloursForSonicsShoesAndHands.get(rand1.nextInt(coloursForSonicsShoesAndHands.size()));
    Integer randomColourForShoes2 = coloursForSonicsShoesAndHands.get(rand2.nextInt(coloursForSonicsShoesAndHands.size()));
    Integer randomColourForHands = coloursForSonicsShoesAndHands.get(rand3.nextInt(coloursForSonicsShoesAndHands.size()));
    //Fur and eyes
    ArrayList<Integer> coloursForSonicsFurAndEyes = new ArrayList<Integer>();
    coloursForSonicsFurAndEyes.add(1);
    coloursForSonicsFurAndEyes.add(2);
    coloursForSonicsFurAndEyes.add(3);
    coloursForSonicsFurAndEyes.add(4);
    coloursForSonicsFurAndEyes.add(5);
    coloursForSonicsFurAndEyes.add(7);
    coloursForSonicsFurAndEyes.add(9);
    coloursForSonicsFurAndEyes.add(10);
    Random rand4 = new Random();
    Random rand5 = new Random();
    Random rand6 = new Random();
    Integer randomColourForFurBigPart = coloursForSonicsFurAndEyes.get(rand4.nextInt(coloursForSonicsFurAndEyes.size()));
    Integer randomColourForFurSmallPart = coloursForSonicsFurAndEyes.get(rand5.nextInt(coloursForSonicsFurAndEyes.size()));
    Integer randomColourForEyes = coloursForSonicsFurAndEyes.get(rand6.nextInt(coloursForSonicsFurAndEyes.size()));
    colourSonicsEyes(6, randomColourForEyes, 5);
    colourSonicsNose(5, 6);
    colourSonicsShoes(randomColourForShoes1, randomColourForShoes2);
    colourSonicsMouth(randomColourForFurSmallPart, 6);
    colourSonicsBody(randomColourForFurBigPart, randomColourForFurSmallPart);
    colourShoesOutline(8);
    colourSonicsBodyOutline(8);
    colourSonicsHands(randomColourForHands);
    colourSonicsHandsOutline(8);
    colourSonicsHead(randomColourForFurBigPart, randomColourForFurSmallPart);
    colourSonicsHeadOutline(8);
  }

  void colourSonicsHeadOutline1stQuadrant(int colour) {
    state[29][42] = colour;
    state[28][41] = colour;
    state[25][36] = colour;
    state[24][35] = colour;
    state[23][34] = colour;
    for (int y = 22; y < 34; y++) {
      state[22][y] = colour;
    }
    state[23][21] = colour;
    state[24][20] = colour;
    for (int y = 15; y < 20; y++) {
      state[25][y] = colour;
    }
    for (int y = 13; y < 16; y++) {
      state[26][y] = colour;
    }
    for (int y = 10; y < 13; y++) {
      state[25][y] = colour;
    }
    for (int y = 6; y < 10; y++) {
      state[24][y] = colour;
    }
    state[25][5] = colour;
    state[26][6] = colour;
    state[27][7] = colour;
    state[28][8] = colour;
    state[29][9] = colour;
    state[30][9] = colour;
    state[31][10] = colour;
    state[32][10] = colour;
    state[33][11] = colour;
    state[33][12] = colour;
    state[32][13] = colour;
    state[31][14] = colour;
    state[30][15] = colour;
    state[29][15] = colour;
    state[28][14] = colour;
    state[27][14] = colour;
    state[34][11] = colour;
    state[35][10] = colour;
    state[36][10] = colour;
    for (int x = 37; x < 42; x++) {
      state[x][9] = colour;
    }
    for (int x = 42; x < 49; x++) {
      state[x][8] = colour;
    }
    state[49][9] = colour;
    state[49][15] = colour;
    state[48][16] = colour;
  }

  void colourSonicsHeadOutline2ndQuadrant(int colour) {
    state[50][14] = colour;
    state[51][13] = colour;
    state[52][12] = colour;
    state[53][11] = colour;
    state[54][10] = colour;
    state[55][9] = colour;
    state[57][7] = colour;
    state[53][9] = colour;
    state[52][9] = colour;
    state[51][9] = colour;
    state[50][9] = colour;
    state[56][8] = colour;
    state[57][8] = colour;
    state[57][9] = colour;
    state[58][10] = colour;
    state[58][11] = colour;
    state[58][12] = colour;
    state[59][13] = colour;
    state[59][14] = colour;
    state[59][15] = colour;
    state[60][16] = colour;
    state[60][17] = colour;
    state[60][18] = colour;
    state[60][19] = colour;
    state[59][10] = colour;
    state[50][17] = colour;
    state[51][17] = colour;
    state[51][16] = colour;
    state[52][15] = colour;
    state[53][14] = colour;
    state[54][13] = colour;
    state[55][12] = colour;
    state[56][11] = colour;
    state[56][12] = colour;
    state[56][13] = colour;
    state[57][14] = colour;
    state[57][15] = colour;
    state[57][16] = colour;
    state[58][17] = colour;
    state[58][18] = colour;
    state[58][19] = colour;
    state[57][19] = colour;
    state[56][19] = colour;
    state[55][18] = colour;
    state[54][18] = colour;
    state[53][18] = colour;
    state[52][17] = colour;
    state[60][10] = colour;
    state[61][11] = colour;
    state[62][11] = colour;
    state[63][11] = colour;
    state[64][12] = colour;
    state[65][12] = colour;
    state[66][12] = colour;
    state[67][13] = colour;
    state[68][13] = colour;
    state[69][13] = colour;
    state[70][14] = colour;
    state[71][14] = colour;
    state[72][14] = colour;
    state[73][15] = colour;
    state[74][15] = colour;
    state[75][16] = colour;
    state[76][16] = colour;
    state[77][17] = colour;
    state[78][18] = colour;
    state[79][19] = colour;
    state[80][20] = colour;
    state[81][21] = colour;
    state[82][22] = colour;
    state[83][23] = colour;
    state[84][24] = colour;
    state[85][25] = colour;
    state[86][26] = colour;
    state[86][27] = colour;
    state[87][28] = colour;
    state[87][29] = colour;
    state[88][30] = colour;
    state[88][31] = colour;
    state[89][32] = colour;
    state[89][33] = colour;
    state[90][34] = colour;
    state[90][35] = colour;
    state[91][36] = colour;
    state[91][37] = colour;
    state[91][38] = colour;
    state[91][39] = colour;
    state[91][40] = colour;
    state[90][39] = colour;
    state[89][38] = colour;
    state[88][37] = colour;
    state[87][36] = colour;
    state[86][35] = colour;
    state[85][34] = colour;
    state[84][33] = colour;
    state[83][33] = colour;
    state[82][32] = colour;
    state[81][32] = colour;
    state[80][31] = colour;
    state[79][31] = colour;
    state[78][31] = colour;
    state[77][30] = colour;
    state[76][30] = colour;
    state[75][30] = colour;
    state[74][29] = colour;
    state[73][28] = colour;
    state[72][27] = colour;
    state[71][26] = colour;
    state[70][25] = colour;
    state[69][24] = colour;
    state[68][24] = colour;
    state[67][23] = colour;
    state[66][23] = colour;
    state[65][22] = colour;
    state[64][22] = colour;
    state[75][31] = colour;
    state[76][32] = colour;
    state[76][33] = colour;
    state[77][34] = colour;
    state[77][35] = colour;
    state[78][36] = colour;
    state[78][37] = colour;
    state[79][38] = colour;
    state[79][39] = colour;
    state[79][40] = colour;
    state[80][41] = colour;
    state[80][42] = colour;
    state[80][43] = colour;
    state[81][44] = colour;
    state[81][45] = colour;
    state[81][46] = colour;
    state[82][47] = colour;
    state[82][48] = colour;
    state[82][49] = colour;
    state[74][49] = colour;
    state[74][48] = colour;
    state[73][47] = colour;
    state[73][46] = colour;
    state[72][45] = colour;
    state[72][44] = colour;
    state[71][43] = colour;
    state[70][42] = colour;
    state[69][41] = colour;
    state[68][40] = colour;
    state[67][39] = colour;
    state[66][39] = colour;
    state[66][40] = colour;
    state[66][41] = colour;
    state[67][42] = colour;
    state[67][43] = colour;
    state[67][44] = colour;
    state[67][45] = colour;
    state[68][46] = colour;
    state[68][47] = colour;
    state[68][48] = colour;
    state[68][49] = colour;
    state[65][38] = colour;
    state[64][37] = colour;
    state[63][36] = colour;
    state[62][35] = colour;
    state[61][34] = colour;
    state[60][34] = colour;
    state[59][33] = colour;
    state[58][33] = colour;
    state[57][32] = colour;
    state[56][32] = colour;
  }

  void colourSonicsHeadOutline3rdQuadrant(int colour) {
    state[68][50] = colour;
    state[75][50] = colour;
    state[75][51] = colour;
    state[75][52] = colour;
    state[76][53] = colour;
    state[76][54] = colour;
    state[76][55] = colour;
    state[76][56] = colour;
    state[77][57] = colour;
    state[77][58] = colour;
    state[77][59] = colour;
    state[77][60] = colour;
    state[77][61] = colour;
    state[82][50] = colour;
    state[81][51] = colour;
    state[81][52] = colour;
    state[81][53] = colour;
    state[80][54] = colour;
    state[80][55] = colour;
    state[80][56] = colour;
    state[79][57] = colour;
    state[79][58] = colour;
    state[79][59] = colour;
    state[78][60] = colour;
    state[78][61] = colour;
    state[77][62] = colour;
    for (int y = 51; y < 56; y++) {
      state[69][y] = colour;
    }
    for (int y = 56; y < 61; y++) {
      state[70][y] = colour;
    }
    for (int y = 61; y < 65; y++) {
      state[69][y] = colour;
    }
    state[68][65] = colour;
    state[68][66] = colour;
    state[67][67] = colour;
    state[67][68] = colour;
    state[66][69] = colour;
    state[65][70] = colour;
    state[65][69] = colour;
    state[65][68] = colour;
    state[65][67] = colour;
    state[64][66] = colour;
    state[64][65] = colour;
    state[64][64] = colour;
    state[64][63] = colour;
    state[63][62] = colour;
    state[63][61] = colour;
    state[63][60] = colour;
    state[62][59] = colour;
    state[62][58] = colour;
    state[62][57] = colour;
    state[61][56] = colour;
    state[61][55] = colour;
    state[60][54] = colour;
    state[59][53] = colour;
  }

  void colourSonicsHeadOutline(int colour) {
    colourSonicsHeadOutline1stQuadrant(colour);
    colourSonicsHeadOutline2ndQuadrant(colour);
    colourSonicsHeadOutline3rdQuadrant(colour);
  }

  void colourSonicsHead1stQuadrant(int colour) {
    state[48][9] = colour;
    for (int x = 26; x < 31; x++) {
      for (int y = 10; y < 13; y++) {
        state[x][y] = colour;
      }
    }
    state[25][6] = colour;
    state[25][7] = colour;
    state[26][7] = colour;
    for (int x = 25; x < 28; x++) {
      state[x][8] = colour;
      state[x][9] = colour;
    }
    state[28][9] = colour;
    state[31][12] = colour;
    state[31][11] = colour;
    state[32][12] = colour;
    state[32][11] = colour;
    for (int x = 27; x < 32; x++) {
      state[x][13] = colour;
    }
    state[29][14] = colour;
    state[30][14] = colour;
    state[27][15] = colour;
    state[28][15] = colour;
    for (int x = 26; x < 47; x++) {
      for (int y = 16; y < 19; y++) {
        state[x][y] = colour;
      }
    }
    for (int x = 29; x < 41; x++) {
      state[x][19] = colour;
    }
    for (int x = 30; x < 40; x++) {
      state[x][20] = colour;
    }
    for (int x = 30; x < 39; x++) {
      state[x][21] = colour;
    }
    for (int x = 31; x < 38; x++) {
      state[x][22] = colour;
    }
    for (int x = 31; x < 37; x++) {
      state[x][23] = colour;
    }
    for (int x = 31; x < 36; x++) {
      state[x][24] = colour;
    }
    for (int x = 32; x < 36; x++) {
      state[x][25] = colour;
    }
    for (int y = 26; y < 30; y++) {
      state[32][y] = colour;
    }
    for (int y = 26; y < 32; y++) {
      state[33][y] = colour;
    }
    state[34][26] = colour;
    state[34][27] = colour;
    for (int x = 37; x < 47; x++) {
      for (int y = 10; y < 16; y++) {
        state[x][y] = colour;
      }
    }
    for (int x = 42; x < 48; x++) {
      state[x][9] = colour;
    }
    for (int y = 10; y < 17; y++) {
      state[47][y] = colour;
    }
    for (int y = 10; y < 16; y++) {
      state[48][y] = colour;
    }
    for (int y = 10; y < 15; y++) {
      state[49][y] = colour;
    }
    state[49][16] = colour;
    state[49][17] = colour;
    state[48][17] = colour;
    state[48][18] = colour;
    state[47][18] = colour;
    state[48][19] = colour;
    state[47][19] = colour;
    state[49][19] = colour;
    state[49][20] = colour;
    state[36][11] = colour;
    state[35][11] = colour;
    state[36][12] = colour;
    state[35][12] = colour;
    state[34][12] = colour;
    state[36][13] = colour;
    state[35][13] = colour;
    state[34][13] = colour;
    state[33][13] = colour;
    for (int x = 32; x < 37; x++) {
      state[x][14] = colour;
    }
    for (int x = 31; x < 37; x++) {
      state[x][15] = colour;
    }
    state[47][17] = colour;
    state[49][18] = colour;
  }

  void colourSonicsHead2ndQuadrant(int colour1, int colour2) {
    for (int x = 50; x < 54; x++) {
      state[x][10] = colour1;
    }
    for (int x = 50; x < 53; x++) {
      state[x][11] = colour1;
    }
    state[50][12] = colour1;
    state[51][12] = colour1;
    state[50][13] = colour1;
    state[50][16] = colour1;
    state[50][15] = colour1;
    state[51][15] = colour1;
    state[51][14] = colour1;
    state[52][14] = colour1;
    state[52][13] = colour1;
    state[53][13] = colour1;
    state[53][12] = colour1;
    state[54][12] = colour1;
    state[54][11] = colour1;
    state[55][11] = colour1;
    state[55][10] = colour1;
    state[56][10] = colour1;
    state[56][9] = colour1;
    for (int y = 10; y < 14; y++) {
      state[57][y] = colour1;
    }
    for (int y = 13; y < 17; y++) {
      state[58][y] = colour1;
    }
    for (int y = 16; y < 20; y++) {
      state[59][y] = colour1;
    }
    for (int y = 13; y < 18; y++) {
      state[55][y] = colour2;
    }
    for (int y = 14; y < 18; y++) {
      state[54][y] = colour2;
    }
    for (int y = 15; y < 18; y++) {
      state[53][y] = colour2;
    }
    state[52][16] = colour2;
    for (int y = 14; y < 19; y++) {
      state[56][y] = colour2;
    }
    state[57][17] = colour2;
    state[57][18] = colour2;
    for (int x = 50; x < 53; x++) {
      state[x][18] = colour1;
    }
    for (int x = 50; x < 56; x++) {
      state[x][19] = colour1;
    }
    for (int x = 50; x < 80; x++) {
      state[x][20] = colour1;
      state[x][21] = colour1;
    }
    state[52][22] = colour1;
    state[52][23] = colour1;
    state[52][24] = colour1;
    for (int y = 23; y < 37; y++) {
      state[64][y] = colour1;
    }
    for (int x = 58; x < 64; x++) {
      state[x][32] = colour1;
    }
    for (int x = 60; x < 64; x++) {
      state[x][33] = colour1;
    }
    state[62][34] = colour1;
    state[63][34] = colour1;
    state[63][35] = colour1;
    for (int y = 23; y < 38; y++) {
      state[65][y] = colour1;
    }
    for (int y = 24; y < 39; y++) {
      state[66][y] = colour1;
      state[67][y] = colour1;
    }
    for (int y = 25; y < 40; y++) {
      state[68][y] = colour1;
      state[69][y] = colour1;
    }
    state[69][40] = colour1;
    for (int y = 26; y < 42; y++) {
      state[70][y] = colour1;
    }
    for (int y = 27; y < 43; y++) {
      state[71][y] = colour1;
    }
    for (int y = 28; y < 44; y++) {
      state[72][y] = colour1;
    }
    for (int y = 29; y < 46; y++) {
      state[73][y] = colour1;
    }
    for (int y = 30; y < 48; y++) {
      state[74][y] = colour1;
    }
    for (int y = 32; y < 50; y++) {
      state[75][y] = colour1;
    }
    for (int y = 34; y < 50; y++) {
      state[76][y] = colour1;
    }
    for (int y = 36; y < 50; y++) {
      state[77][y] = colour1;
    }
    for (int y = 38; y < 50; y++) {
      state[78][y] = colour1;
    }
    for (int y = 41; y < 50; y++) {
      state[79][y] = colour1;
    }
    for (int y = 44; y < 50; y++) {
      state[80][y] = colour1;
    }
    state[81][47] = colour1;
    state[81][48] = colour1;
    state[81][49] = colour1;
    for (int y = 22; y < 32; y++) {
      for (int x = 53; x < 64; x++) {
        state[x][y] = colour1;
      }
    }
    state[51][22] = colour1;
    state[51][23] = colour1;
    for (int y = 15; y < 20; y++) {
      for (int x = 61; x < 73; x++) {
        state[x][y] = colour1;
      }
    }
    state[60][15] = colour1;
    for (int x = 60; x < 70; x++) {
      state[x][14] = colour1;
    }
    for (int x = 60; x < 67; x++) {
      state[x][13] = colour1;
    }
    for (int x = 59; x < 64; x++) {
      state[x][12] = colour1;
    }
    state[59][11] = colour1;
    state[60][11] = colour1;
    state[73][16] = colour1;
    state[74][16] = colour1;
    for (int x = 73; x < 77; x++) {
      state[x][17] = colour1;
    }
    for (int x = 73; x < 78; x++) {
      state[x][18] = colour1;
    }
    for (int x = 73; x < 79; x++) {
      state[x][19] = colour1;
    }
    state[80][21] = colour1;
    for (int x = 73; x < 82; x++) {
      for (int y = 22; y < 28; y++) {
        state[x][y] = colour1;
      }
    }
    for (int x = 66; x < 73; x++) {
      state[x][22] = colour1;
    }
    for (int x = 68; x < 73; x++) {
      state[x][23] = colour1;
    }
    for (int x = 70; x < 73; x++) {
      state[x][24] = colour1;
    }
    state[71][25] = colour1;
    state[72][25] = colour1;
    state[72][26] = colour1;
    for (int x = 74; x < 82; x++) {
      state[x][28] = colour1;
    }
    for (int x = 75; x < 82; x++) {
      state[x][29] = colour1;
    }
    for (int x = 78; x < 82; x++) {
      state[x][30] = colour1;
    }
    state[81][31] = colour1;
    for (int y = 23; y < 32; y++) {
      state[82][y] = colour1;
    }
    for (int y = 24; y < 33; y++) {
      state[83][y] = colour1;
    }
    for (int y = 25; y < 33; y++) {
      state[84][y] = colour1;
    }
    for (int y = 26; y < 34; y++) {
      state[85][y] = colour1;
    }
    for (int y = 28; y < 35; y++) {
      state[86][y] = colour1;
    }
    for (int y = 30; y < 36; y++) {
      state[87][y] = colour1;
    }
    for (int y = 32; y < 37; y++) {
      state[88][y] = colour1;
    }
    for (int y = 34; y < 38; y++) {
      state[89][y] = colour1;
    }
    for (int y = 34; y < 38; y++) {
      state[89][y] = colour1;
    }
    for (int y = 36; y < 39; y++) {
      state[90][y] = colour1;
    }
    state[50][36] = colour1;
    state[50][37] = colour1;
    for (int y = 34; y < 39; y++) {
      state[51][y] = colour1;
    }
    for (int y = 32; y < 40; y++) {
      state[52][y] = colour1;
    }
    for (int y = 32; y < 42; y++) {
      state[53][y] = colour1;
    }
    for (int y = 32; y < 41; y++) {
      state[54][y] = colour1;
    }
    for (int y = 32; y < 40; y++) {
      state[55][y] = colour1;
    }
    for (int y = 33; y < 39; y++) {
      state[56][y] = colour1;
    }
    for (int y = 33; y < 38; y++) {
      state[57][y] = colour1;
    }
    for (int y = 34; y < 39; y++) {
      state[58][y] = colour1;
    }
    for (int y = 34; y < 42; y++) {
      state[59][y] = colour1;
    }
    for (int y = 35; y < 42; y++) {
      state[60][y] = colour1;
      state[61][y] = colour1;
    }
    for (int y = 36; y < 42; y++) {
      state[62][y] = colour1;
    }
    for (int y = 37; y < 42; y++) {
      state[63][y] = colour1;
    }
    for (int y = 38; y < 42; y++) {
      state[64][y] = colour1;
    }
    for (int y = 39; y < 42; y++) {
      state[65][y] = colour1;
    }
    for (int x = 58; x < 67; x++) {
      for (int y = 42; y < 49; y++) {
        state[x][y] = colour1;
      }
    }
    for (int x = 61; x < 68; x++) {
      state[x][49] = colour1;
    }
    state[67][48] = colour1;
    state[67][47] = colour1;
    state[67][46] = colour1;
    for (int y = 43; y < 48; y++) {
      state[57][y] = colour1;
    }
    for (int y = 44; y < 47; y++) {
      state[56][y] = colour1;
    }
    state[55][45] = colour1;
  }

  void colourSonicsHead3rdQuadrant(int colour) {
    for (int y = 50; y < 67; y++) {
      state[65][y] = colour;
      state[66][y] = colour;
      state[67][y] = colour;
    }
    for (int y = 50; y < 57; y++) {
      state[77][y] = colour;
      state[78][y] = colour;
      state[79][y] = colour;
    }
    for (int y = 57; y < 60; y++) {
      state[78][y] = colour;
    }
    for (int y = 50; y < 53; y++) {
      state[76][y] = colour;
    }
    for (int y = 50; y < 54; y++) {
      state[80][y] = colour;
    }
    state[81][50] = colour;
    for (int y = 50; y < 65; y++) {
      state[68][y] = colour;
    }
    for (int y = 56; y < 61; y++) {
      state[69][y] = colour;
    }
    for (int y = 50; y < 63; y++) {
      state[64][y] = colour;
    }
    for (int y = 50; y < 60; y++) {
      state[63][y] = colour;
    }
    for (int y = 50; y < 57; y++) {
      state[62][y] = colour;
    }
    state[61][52] = colour;
    state[61][53] = colour;
    state[60][53] = colour;
    state[61][54] = colour;
    state[66][67] = colour;
    state[66][68] = colour;
  }

  void colourSonicsHead(int colour1, int colour2) {
    colourSonicsHead1stQuadrant(colour1);
    colourSonicsHead2ndQuadrant(colour1, colour2);
    ;
    colourSonicsHead3rdQuadrant(colour1);
  }

  void colourSonicsEyes(int colour1, int colour2, int colour3) {
    colourSonicsEyes1stQuadrant(colour1, colour2, colour3);
    colourSonicsEyes2ndQuadrant(colour1);
  }

  void colourSonicsEyes1stQuadrant(int colour1, int colour2, int colour3) {
    //WHITE PART OF EYES
    for (int x = 23; x < 31; x++) {
      for (int y = 22; y < 34; y++) {
        state[x][y] = colour1;
      }
    }
    for (int x = 24; x < 32; x++) {
      state[x][34] = colour1;
    }
    for (int x = 25; x < 32; x++) {
      state[x][35] = colour1;
    }
    for (int x = 26; x < 31; x++) {
      state[x][36] = colour1;
    }
    for (int y = 25; y < 34; y++) {
      state[31][y] = colour1;
    }
    for (int y = 30; y < 36; y++) {
      state[32][y] = colour1;
    }
    for (int y = 32; y < 36; y++) {
      for (int x = 33; x < 49; x++) {
        state[x][y] = colour1;
      }
    }
    for (int y = 24; y < 37; y++) {
      for (int x = 36; x < 49; x++) {
        state[x][y] = colour1;
      }
    }
    for (int y = 21; y < 37; y++) {
      state[49][y] = colour1;
    }
    for (int x = 38; x < 46; x++) {
      state[x][37] = colour1;
    }
    for (int x = 39; x < 44; x++) {
      state[x][38] = colour1;
    }
    state[41][39] = colour1;
    state[42][39] = colour1;
    for (int x = 37; x < 49; x++) {
      state[x][23] = colour1;
    }
    for (int x = 38; x < 49; x++) {
      state[x][22] = colour1;
    }
    for (int x = 39; x < 49; x++) {
      state[x][21] = colour1;
    }
    for (int x = 40; x < 49; x++) {
      state[x][20] = colour1;
    }
    for (int x = 41; x < 47; x++) {
      state[x][19] = colour1;
    }
    for (int y = 28; y < 32; y++) {
      state[34][y] = colour1;
    }
    for (int y = 26; y < 32; y++) {
      state[35][y] = colour1;
    }
    for (int x = 25; x < 30; x++) {
      state[x][21] = colour1;
      state[x][20] = colour1;
    }
    for (int x = 26; x < 29; x++) {
      state[x][19] = colour1;
    }
    state[24][21] = colour1;
    //GREEN PART OF EYES
    for (int x = 29; x < 33; x++) {
      for (int y = 30; y < 35; y++) {
        state[x][y] = colour2;
      }
    }
    state[30][29] = colour2;
    state[31][29] = colour2;
    state[30][35] = colour2;
    state[31][35] = colour2;
    for (int x = 44; x < 48; x++) {
      for (int y = 29; y < 35; y++) {
        state[x][y] = colour2;
      }
    }
    state[45][28] = colour2;
    state[46][28] = colour2;
    state[45][35] = colour2;
    state[46][35] = colour2;
    //BLACK PART OF EYES
    for (int x = 30; x < 32; x++) {
      for (int y = 31; y < 34; y++) {
        state[x][y] = colour3;
      }
    }
    for (int x = 45; x < 47; x++) {
      for (int y = 30; y < 34; y++) {
        state[x][y] = colour3;
      }
    }
    //INNER WHITE DOTS OF EYES
    state[30][31] = colour1;
    state[45][30] = colour1;
  }

  void colourSonicsEyes2ndQuadrant(int colour1) {
    for (int y = 22; y < 36; y++) {
      state[50][y] = colour1;
    }
    for (int y = 24; y < 34; y++) {
      state[51][y] = colour1;
    }
    for (int y = 25; y < 32; y++) {
      state[52][y] = colour1;
    }
  }

  void colourBackground1of16Quadrant(int colour) {
    for (int x = 0; x < 25; x++) {
      for (int y = 0; y < 25; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground2of16Quadrant(int colour) {
    for (int x = 25; x < 50; x++) {
      for (int y = 0; y < 25; y++) {
        state[x][y] = colour;
      }
    }
  }

  void colourBackground3of16Quadrant(int colour) {
    for (int x = 50; x < 75; x++) {
      for (int y = 0; y < 25; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground4of16Quadrant(int colour) {
    for (int x = 75; x < 100; x++) {
      for (int y = 0; y < 25; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground5of16Quadrant(int colour) {
    for (int x = 0; x < 25; x++) {
      for (int y = 25; y < 50; y++) {
        state[x][y] = colour;
      }
    }
  }

  void colourBackground6of16Quadrant(int colour) {
    for (int x = 25; x < 50; x++) {
      for (int y = 25; y < 50; y++) {
        state[x][y] = colour;
      }
    }
  }

  void colourBackground7of16Quadrant(int colour) {
    for (int x = 50; x < 75; x++) {
      for (int y = 25; y < 50; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground8of16Quadrant(int colour) {
    for (int x = 75; x < 100; x++) {
      for (int y = 25; y < 50; y++) {
        state[x][y] = colour;
      }
    }
  }

  void colourBackground9of16Quadrant(int colour) {
    for (int x = 0; x < 25; x++) {
      for (int y = 50; y < 75; y++) {
        state[x][y] = colour;
      }
    }
  }

  void colourBackground10of16Quadrant(int colour) {
    for (int x = 25; x < 50; x++) {
      for (int y = 50; y < 75; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground11of16Quadrant(int colour) {
    for (int x = 50; x < 75; x++) {
      for (int y = 50; y < 75; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground12of16Quadrant(int colour) {
    for (int x = 75; x < 100; x++) {
      for (int y = 50; y < 75; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground13of16Quadrant(int colour) {
    for (int x = 0; x < 25; x++) {
      for (int y = 75; y < 100; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground14of16Quadrant(int colour) {
    for (int x = 25; x < 50; x++) {
      for (int y = 75; y < 100; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground15of16Quadrant(int colour) {
    for (int x = 50; x < 75; x++) {
      for (int y = 75; y < 100; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground16of16Quadrant(int colour) {
    for (int x = 75; x < 100; x++) {
      for (int y = 75; y < 100; y++) {
        state[x][y] = colour;
      }
    }
  }
  
  void colourBackground1stQuadrant(int colour) {
    for (int x = 0; x < 50; x++) {
      for (int y = 0; y < 50; y++) {
        state[x][y] = colour;
      }
    }
  }

  void colourBackground2ndQuadrant(int colour) {
    for (int x = 50; x < 100; x++) {
      for (int y = 0; y < 50; y++) {
        state[x][y] = colour;
      }
    }
  }
  void colourBackground3rdQuadrant(int colour) {
    for (int x = 50; x < 100; x++) {
      for (int y = 50; y < 100; y++) {
        state[x][y] = colour;
      }
    }
  }
  void colourBackground4thQuadrant(int colour) {
    for (int x = 0; x < 50; x++) {
      for (int y = 50; y < 100; y++) {
        state[x][y] = colour;
      }
    }
  }

  void colourSonicsHands(int colour) {
    colourSonicsHands1stQuadrant(colour);
    colourSonicsHands2ndQuadrant(colour);
    colourSonicsHands3rdQuadrant(colour);
    colourSonicsHands4thQuadrant(colour);
  }

  void colourSonicsHands1stQuadrant(int colour) {
    for (int x = 20; x < 30; x++) {
      for (int y = 44; y < 49; y++) {
        state[x][y] = colour;
      }
    }
    state[30][45] = colour;
    state[30][46] = colour;
    state[31][45] = colour;
    for (int x = 22; x < 28; x++) {
      state[x][43] = colour;
    }
    for (int y = 45; y < 50; y++) {
      state[19][y] = colour;
    }
    state[18][47] = colour;
    state[18][48] = colour;
    state[18][49] = colour;
    for (int x = 21; x < 30; x++) {
      state[x][49] = colour;
    }
    for (int x = 32; x < 36; x++) {
      state[x][46] = colour;
    }
    for (int x = 31; x < 39; x++) {
      state[x][47] = colour;
    }
    for (int x = 31; x < 36; x++) {
      state[x][48] = colour;
    }
    for (int x = 31; x < 35; x++) {
      state[x][49] = colour;
    }
    for (int x = 36; x < 41; x++) {
      state[x][49] = colour;
    }
    for (int x = 42; x < 50; x++) {
      state[x][49] = colour;
    }
    for (int x = 43; x < 49; x++) {
      state[x][48] = colour;
    }
    for (int x = 44; x < 50; x++) {
      state[x][47] = colour;
    }
    for (int x = 47; x < 50; x++) {
      state[x][46] = colour;
    }
    state[49][45] = colour;
  }

  void colourSonicsHands2ndQuadrant(int colour) {
    for (int x = 50; x < 54; x++) {
      state[x][45] = colour;
    }
    for (int x = 52; x < 55; x++) {
      state[x][46] = colour;
    }
    for (int x = 53; x < 56; x++) {
      state[x][47] = colour;
    }
    for (int x = 54; x < 57; x++) {
      state[x][48] = colour;
    }
    state[55][49] = colour;
    state[57][49] = colour;
    for (int y = 46; y < 49; y++) {
      state[50][y] = colour;
    }
    for (int y = 47; y < 50; y++) {
      state[51][y] = colour;
    }
    state[52][48] = colour;
    state[52][49] = colour;
    state[53][49] = colour;
    for (int x = 52; x < 55; x++) {
      state[x][44] = colour;
    }
    for (int x = 53; x < 56; x++) {
      state[x][43] = colour;
    }
    for (int x = 54; x < 57; x++) {
      state[x][42] = colour;
    }
    for (int x = 55; x < 58; x++) {
      state[x][41] = colour;
    }
    state[56][40] = colour;
    state[57][40] = colour;
    state[57][39] = colour;
  }

  void colourSonicsHands3rdQuadrant(int colour) {
    for (int y = 50; y < 55; y++) {
      state[50][y] = colour;
    }
    for (int y = 51; y < 54; y++) {
      state[51][y] = colour;
    }
    state[52][52] = colour;
    state[52][50] = colour;
    state[53][50] = colour;
    state[53][51] = colour;
    state[54][50] = colour;
    for (int x = 56; x < 61; x++) {
      state[x][50] = colour;
    }
    for (int x = 58; x < 61; x++) {
      state[x][51] = colour;
    }
  }

  void colourSonicsHands4thQuadrant(int colour) {
    state[48][50] = colour;
    state[49][50] = colour;
    state[49][51] = colour;
    state[49][53] = colour;
    state[48][53] = colour;
    state[47][53] = colour;
    state[49][54] = colour;
    state[48][54] = colour;
    state[48][52] = colour;
    state[47][51] = colour;
    state[46][50] = colour;
    state[46][51] = colour;
    state[46][52] = colour;
    for (int x = 42; x < 46; x++) {
      for (int y = 50; y < 54; y++) {
        state[x][y] = colour;
      }
    }
    for (int x = 36; x < 41; x++) {
      for (int y = 50; y < 54; y++) {
        state[x][y] = colour;
      }
    }
    state[33][50] = colour;
    state[34][50] = colour;
    for (int x = 22; x < 29; x++) {
      state[x][50] = colour;
    }
    state[19][50] = colour;
    state[20][50] = colour;
    state[19][51] = colour;
    state[20][51] = colour;
    state[21][51] = colour;
    state[20][52] = colour;
    state[22][52] = colour;
    for (int x = 20; x < 29; x++) {
      state[x][53] = colour;
    }
    for (int x = 23; x < 28; x++) {
      state[x][51] = colour;
    }
  }

  void colourSonicsHandsOutline(int colour) {
    colourSonicsHandsOutline1stQuadrant(colour);
    colourSonicsHandsOutline2ndQuadrant(colour);
    colourSonicsHandsOutline3rdQuadrant(colour);
    colourSonicsHandsOutline4thQuadrant(colour);
  }

  void colourSonicsHandsOutline1stQuadrant(int colour) {
    state[28][43] = colour;
    state[29][43] = colour;
    state[30][44] = colour;
    state[31][44] = colour;
    state[32][44] = colour;
    state[33][44] = colour;
    for (int x = 32; x < 37; x++) {
      state[x][45] = colour;
    }
    state[36][46] = colour;
    state[37][46] = colour;
    state[38][46] = colour;
    state[39][47] = colour;
    state[35][49] = colour;
    for (int x = 36; x < 43; x++) {
      state[x][48] = colour;
    }
    state[42][47] = colour;
    state[43][47] = colour;
    state[44][46] = colour;
    state[45][46] = colour;
    state[46][46] = colour;
    state[47][45] = colour;
    state[48][45] = colour;
    state[49][44] = colour;
    state[49][48] = colour;
    state[41][49] = colour;
    state[31][46] = colour;
    state[30][47] = colour;
    state[30][48] = colour;
    state[30][49] = colour;
    for (int x = 21; x < 28; x++) {
      state[x][42] = colour;
    }
    state[21][43] = colour;
    state[20][43] = colour;
    state[19][43] = colour;
    state[19][44] = colour;
    state[18][44] = colour;
    state[18][45] = colour;
    state[18][46] = colour;
    state[17][46] = colour;
    state[17][47] = colour;
    state[17][48] = colour;
    state[17][49] = colour;
    state[20][49] = colour;
  }

  void colourSonicsHandsOutline2ndQuadrant(int colour) {
    state[50][44] = colour;
    state[51][44] = colour;
    state[52][43] = colour;
    state[53][42] = colour;
    state[54][41] = colour;
    state[55][40] = colour;
    state[56][39] = colour;
    state[57][38] = colour;
    state[58][39] = colour;
    state[58][40] = colour;
    state[58][41] = colour;
    state[57][42] = colour;
    state[56][43] = colour;
    state[55][44] = colour;
    state[54][45] = colour;
    state[55][46] = colour;
    state[56][47] = colour;
    state[57][48] = colour;
    state[58][49] = colour;
    state[56][49] = colour;
    state[54][49] = colour;
    state[53][48] = colour;
    state[52][47] = colour;
    state[51][46] = colour;
    state[59][49] = colour;
    state[60][49] = colour;
    state[50][49] = colour;
  }

  void colourSonicsHandsOutline3rdQuadrant(int colour) {
    state[51][50] = colour;
    state[52][51] = colour;
    state[53][52] = colour;
    state[54][51] = colour;
    state[55][50] = colour;
    state[55][51] = colour;
    state[56][51] = colour;
    state[57][51] = colour;
    state[58][52] = colour;
    state[59][52] = colour;
    state[60][52] = colour;
    state[61][51] = colour;
    state[61][50] = colour;
    state[52][53] = colour;
    state[51][54] = colour;
    state[50][55] = colour;
  }

  void colourSonicsHandsOutline4thQuadrant(int colour) {
    state[49][52] = colour;
    state[48][51] = colour;
    state[47][52] = colour;
    state[46][53] = colour;
    state[47][54] = colour;
    state[48][55] = colour;
    state[49][55] = colour;
    state[47][50] = colour;
    for (int x = 35; x < 46; x++) {
      state[x][54] = colour;
    }
    for (int y = 50; y < 54; y++) {
      state[41][y] = colour;
    }
    for (int y = 50; y < 54; y++) {
      state[35][y] = colour;
    }
    state[34][51] = colour;
    state[33][51] = colour;
    state[32][50] = colour;
    state[31][50] = colour;
    state[30][50] = colour;
    state[29][50] = colour;
    state[29][51] = colour;
    state[28][51] = colour;
    for (int x = 23; x < 29; x++) {
      state[x][52] = colour;
    }
    state[22][51] = colour;
    state[21][52] = colour;
    state[21][50] = colour;
    state[18][50] = colour;
    state[18][51] = colour;
    state[19][52] = colour;
    state[19][53] = colour;
    state[17][50] = colour;
    for (int x = 20; x < 30; x++) {
      state[x][54] = colour;
    }
    state[29][53] = colour;
  }

  void colourSonicsNose(int colour1, int colour2) {
    for (int x = 23; x < 29; x++) {
      state[x][37] = colour1;
    }
    for (int x = 23; x < 30; x++) {
      state[x][38] = colour1;
    }
    state[25][38] = colour2;
    state[26][38] = colour2;
    state[27][38] = colour2;
    for (int x = 24; x < 31; x++) {
      state[x][39] = colour1;
    }
    state[26][39] = colour2;
    state[27][39] = colour2;
    state[28][39] = colour2;
    for (int x = 25; x < 31; x++) {
      state[x][40] = colour1;
    }
  }

  void colourSonicsMouth(int colour1, int colour2) {
    colourSonicsMouth1stQuadrant(colour1, colour2);
    colourSonicsMouth2ndQuadrant(colour1, colour2);
  }

  void colourSonicsMouth1stQuadrant(int colour1, int colour2) {
    for (int x = 31; x < 44; x++) {
      for (int y = 40; y < 44; y++) {
        state[x][y] = colour1;
      }
    }
    state[44][43] = colour1;
    for (int x = 34; x < 46; x++) {
      state[x][44] = colour1;
    }
    for (int x = 37; x < 47; x++) {
      state[x][45] = colour1;
    }
    for (int x = 39; x < 44; x++) {
      state[x][46] = colour1;
    }
    state[40][47] = colour1;
    state[41][47] = colour1;
    for (int x = 31; x < 38; x++) {
      for (int y = 37; y < 40; y++) {
        state[x][y] = colour1;
      }
    }
    for (int x = 31; x < 36; x++) {
      state[x][36] = colour1;
    }
    state[29][37] = colour1;
    state[30][37] = colour1;
    state[30][38] = colour1;
    state[38][38] = colour1;
    state[38][39] = colour1;
    state[39][39] = colour1;
    state[40][39] = colour1;
    state[29][41] = colour1;
    state[30][41] = colour1;
    state[30][42] = colour1;
    state[30][43] = colour1;
    for (int x = 44; x < 50; x++) {
      for (int y = 38; y < 44; y++) {
        state[x][y] = colour1;
      }
    }
    state[49][39] = colour2;
    state[48][40] = colour2;
    state[49][40] = colour2;
    state[47][41] = colour2;
    state[48][41] = colour2;
    state[49][41] = colour2;
    state[44][42] = colour2;
    state[45][42] = colour2;
    state[46][42] = colour2;
    state[47][42] = colour2;
    state[48][42] = colour2;
    state[49][42] = colour2;
    state[45][43] = colour2;
    state[46][43] = colour2;
    state[47][43] = colour2;
    state[48][43] = colour2;
    state[49][43] = colour2;
    state[46][44] = colour2;
    state[47][44] = colour2;
    state[48][44] = colour2;
    state[46][37] = colour1;
    state[47][37] = colour1;
    state[48][37] = colour1;
    state[49][37] = colour1;
    state[43][39] = colour1;
  }

  void colourSonicsMouth2ndQuadrant(int colour1, int colour2) {
    state[50][38] = colour1;
    state[50][39] = colour1;
    state[50][40] = colour2;
    state[50][41] = colour2;
    state[50][42] = colour2;
    state[50][43] = colour1;
    state[51][39] = colour1;
    state[51][40] = colour1;
    state[51][41] = colour1;
    state[51][42] = colour1;
    state[51][43] = colour1;
    state[52][40] = colour1;
    state[52][41] = colour1;
    state[52][42] = colour1;
  }

  void colourSonicsShoes(int colour1, int colour2) {
    colourSonicsShoes3rdQuadrant(colour1, colour2);
    colourSonicsShoes4thQuadrant(colour1, colour2);
  }

  void colourSonicsBody(int colour1, int colour2) {
    colourSonicsBody3rdQuadrant(colour1);
    colourSonicsBody4thQuadrant(colour1, colour2);
  }


  void colourSonicsBody3rdQuadrant(int colour) {
    for (int y = 57; y < 66; y++) {
      state[56][y] = colour;
    }
    state[55][63] = colour;
    state[55][64] = colour;
    for (int x = 52; x < 58; x++) {
      state[x][60] = colour;
    }
    for (int x = 53; x < 58; x++) {
      state[x][61] = colour;
    }
    for (int x = 54; x < 58; x++) {
      state[x][62] = colour;
    }
    for (int x = 50; x < 56; x++) {
      for (int y = 56; y < 60; y++) {
        state[x][y] = colour;
      }
    }
    for (int x = 51; x < 56; x++) {
      state[x][55] = colour;
    }
    for (int x = 52; x < 56; x++) {
      state[x][54] = colour;
    }
    state[53][53] = colour;
    state[54][53] = colour;

    //TAIL
    state[50][67] = colour;
    state[51][67] = colour;
    state[50][68] = colour;
    state[51][68] = colour;
    state[52][68] = colour;
    state[52][69] = colour;
    state[53][69] = colour;
    state[54][69] = colour;
    state[54][70] = colour;
    state[55][70] = colour;
    state[56][70] = colour;
  }

  void colourSonicsBody4thQuadrant(int colour1, int colour2) {
    for (int y = 62; y < 80; y++) {
      state[38][y] = colour1;
      state[39][y] = colour1;
    }
    for (int y = 62; y < 80; y++) {
      state[44][y] = colour1;
      state[45][y] = colour1;
    }
    for (int x = 38; x < 46; x++) {
      state[x][62] = colour1;
      state[x][63] = colour1;
    }
    state[43][61] = colour1;
    state[44][61] = colour1;
    state[45][61] = colour1;
    state[44][60] = colour1;
    state[45][60] = colour1;
    state[46][60] = colour1;
    state[45][59] = colour1;
    state[46][59] = colour1;
    state[47][59] = colour1;
    state[45][58] = colour1;
    for (int x = 35; x < 44; x++) {
      for (int y = 55; y < 59; y++) {
        state[x][y] = colour2;
      }
    }
    for (int x = 36; x < 43; x++) {
      state[x][59] = colour2;
    }
    for (int x = 37; x < 42; x++) {
      state[x][60] = colour2;
    }
    for (int x = 29; x < 35; x++) {
      state[x][52] = colour2;
    }
    for (int x = 30; x < 33; x++) {
      state[x][51] = colour2;
    }
    state[45][56] = colour2;
    state[45][55] = colour2;
    state[46][54] = colour2;
    state[46][55] = colour2;
    state[46][56] = colour2;
    state[46][57] = colour2;
    state[47][55] = colour2;
    state[47][56] = colour2;
    state[47][57] = colour2;
    state[48][56] = colour2;
    state[48][57] = colour2;
    state[48][58] = colour2;
    state[48][60] = colour1;
    state[48][61] = colour1;
    state[49][60] = colour1;
    state[49][61] = colour1;
    state[49][62] = colour1;

    //TAIL
    state[49][66] = colour1;
    state[49][67] = colour1;
    state[48][65] = colour1;
    state[48][66] = colour1;
    state[48][67] = colour1;
    state[47][66] = colour1;
    state[47][65] = colour1;
    state[47][64] = colour1;
  }

  void colourSonicsBodyOutline(int colour) {
    colourSonicsBodyOutline3rdQuadrant(colour);
    colourSonicsBodyOutline4thQuadrant(colour);
  }

  void colourSonicsBodyOutline3rdQuadrant(int colour) {
    state[50][64] = colour;
    state[50][63] = colour;
    state[50][62] = colour;
    state[50][61] = colour;
    state[50][60] = colour;
    state[51][60] = colour;
    state[52][61] = colour;
    state[53][62] = colour;
    state[54][63] = colour;
    state[54][64] = colour;
    state[55][65] = colour;
    state[56][66] = colour;
    state[56][67] = colour;
    state[57][65] = colour;
    state[57][64] = colour;
    state[57][63] = colour;
    state[58][62] = colour;
    state[58][61] = colour;
    state[58][60] = colour;
    state[57][59] = colour;
    state[57][58] = colour;
    state[57][57] = colour;
    state[56][56] = colour;
    state[56][55] = colour;
    state[56][54] = colour;
    state[55][53] = colour;
    state[54][52] = colour;

    //TAIL OUTLINE
    state[50][66] = colour;
    state[51][66] = colour;
    state[52][67] = colour;
    state[53][68] = colour;
    state[54][68] = colour;
    state[55][69] = colour;
    state[56][69] = colour;
    state[57][70] = colour;
    state[58][71] = colour;
    state[57][71] = colour;
    state[56][71] = colour;
    state[55][71] = colour;
    state[54][71] = colour;
    state[53][70] = colour;
    state[52][70] = colour;
    state[51][69] = colour;
    state[50][69] = colour;
  }

  void colourSonicsBodyOutline4thQuadrant(int colour) {
    for (int y = 62; y < 80; y++) {
      state[37][y] = colour;
      state[46][y] = colour;
    }
    state[48][62] = colour;
    state[49][63] = colour;
    state[47][63] = colour;
    state[48][64] = colour;
    state[49][65] = colour;
    state[47][67] = colour;
    state[48][68] = colour;
    state[49][68] = colour;
    for (int y = 64; y < 80; y++) {
      state[40][y] = colour;
      state[43][y] = colour;
    }
    state[41][64] = colour;
    state[42][64] = colour;
    state[36][60] = colour;
    state[35][60] = colour;
    state[35][59] = colour;
    state[34][59] = colour;
    state[34][58] = colour;
    state[34][57] = colour;
    state[34][56] = colour;
    state[34][55] = colour;
    state[34][54] = colour;
    state[34][53] = colour;
    state[33][53] = colour;
    state[32][53] = colour;
    state[31][53] = colour;
    state[30][53] = colour;
    for (int x = 36; x < 43; x++) {
      state[x][61] = colour;
    }
    state[42][60] = colour;
    state[43][60] = colour;
    state[43][59] = colour;
    state[44][59] = colour;
    state[44][58] = colour;
    state[44][57] = colour;
    state[44][56] = colour;
    state[44][55] = colour;
    state[45][57] = colour;
    state[46][58] = colour;
    state[47][58] = colour;
    state[48][59] = colour;
    state[49][59] = colour;
    state[49][58] = colour;
    state[49][57] = colour;
    state[49][56] = colour;
    state[47][60] = colour;
    state[47][61] = colour;
    state[46][61] = colour;
  }

  void colourShoesOutline(int colour) {
    colourShoesOutline3rdQuadrant(colour);
    colourShoesOutline4thQuadrant(colour);
  }

  void colourShoesOutline4thQuadrant(int colour) {
    state[36][81] = colour;
    state[36][82] = colour;
    state[36][83] = colour;
    state[37][80] = colour;
    state[38][80] = colour;
    state[39][80] = colour;
    state[40][80] = colour;
    state[43][80] = colour;
    state[44][80] = colour;
    state[45][80] = colour;
    state[46][80] = colour;
    for (int y = 81; y < 94; y++) {
      state[41][y] = colour;
      state[42][y] = colour;
    }
    for (int x = 24; x < 50; x++) {
      state[x][93] = colour;
    }
    state[24][92] = colour;
    state[24][91] = colour;
    state[24][90] = colour;
    state[25][89] = colour;
    state[26][88] = colour;
    state[27][88] = colour;
    state[28][87] = colour;
    state[29][87] = colour;
    state[30][86] = colour;
    state[31][86] = colour;
    state[32][85] = colour;
    state[33][85] = colour;
    state[34][85] = colour;
    state[47][81] = colour;
    state[47][82] = colour;
    state[47][83] = colour;
    for (int x = 35; x < 49; x++) {
      state[x][84] = colour;
    }
    state[49][85] = colour;
  }

  void colourShoesOutline3rdQuadrant(int colour) {
    state[50][85] = colour;
    state[51][85] = colour;
    state[52][86] = colour;
    state[53][86] = colour;
    state[54][87] = colour;
    state[55][87] = colour;
    state[56][88] = colour;
    state[57][88] = colour;
    state[58][89] = colour;
    state[59][90] = colour;
    state[59][91] = colour;
    state[59][92] = colour;
    state[59][93] = colour;
    for (int x = 50; x < 60; x++) {
      state[x][93] = colour;
    }
  }

  void colourSonicsShoes4thQuadrant(int colour1, int colour2) {
    for (int x = 28; x < 41; x++) {
      for (int y = 88; y < 93; y++) {
        state[x][y] = colour1;
      }
    }
    for (int x = 30; x < 41; x++) {
      state[x][87] = colour1;
    }
    for (int x = 32; x < 41; x++) {
      state[x][86] = colour1;
    }
    for (int x = 35; x < 41; x++) {
      state[x][85] = colour1;
    }
    for (int x = 25; x < 28; x++) {
      for (int y = 90; y < 93; y++) {
        state[x][y] = colour1;
      }
    }
    state[26][89] = colour1;
    state[27][89] = colour1;
    for (int x = 31; x < 37; x++) {
      for (int y = 87; y < 93; y++) {
        state[x][y] = colour2;
      }
    }
    for (int x = 32; x < 37; x++) {
      state[x][86] = colour2;
    }
    state[35][85] = colour2;
    state[36][85] = colour2;
    for (int x = 37; x < 41; x++) {
      for (int y = 81; y < 84; y++) {
        state[x][y] = colour2;
      }
    }
    for (int x = 43; x < 47; x++) {
      for (int y = 81; y < 84; y++) {
        state[x][y] = colour2;
      }
    }
    for (int x = 43; x < 47; x++) {
      for (int y = 85; y < 93; y++) {
        state[x][y] = colour1;
      }
    }
    for (int x = 47; x < 49; x++) {
      for (int y = 85; y < 93; y++) {
        state[x][y] = colour2;
      }
    }
    for (int y = 86; y < 93; y++) {
      state[49][y] = colour2;
    }
  }

  void colourSonicsShoes3rdQuadrant(int colour1, int colour2) {
    for (int y = 86; y < 93; y++) {
      state[50][y] = colour2;
      state[51][y] = colour2;
    }
    for (int y = 87; y < 93; y++) {
      state[52][y] = colour2;
    }
    for (int y = 87; y < 93; y++) {
      state[53][y] = colour1;
    }
    for (int y = 88; y < 93; y++) {
      state[54][y] = colour1;
      state[55][y] = colour1;
    }
    for (int y = 89; y < 93; y++) {
      state[56][y] = colour1;
      state[57][y] = colour1;
    }
    for (int y = 90; y < 93; y++) {
      state[58][y] = colour1;
    }
  }

  void colourBackground(int colour) {
    colourBackground1stQuadrant(colour);
    colourBackground2ndQuadrant(colour);
    colourBackground3rdQuadrant(colour);
    colourBackground4thQuadrant(colour);
  }
}
