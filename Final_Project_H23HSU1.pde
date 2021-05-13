//Huei Hsu H23HSU
int rX1;
int rY1;
int s = 25;
int gX = 75;
int gY = 110;
int gX1 = 1075;
int gY1 = 20;
int bX = 50;
int bY = 100;
int x = 200;
int y = 200;
int pX = 175;
int pY = 165;
int[] hX = {155, 425, 655, 800, 300, 500};
int[] hY = {55, 5, 5, 300, 350, 400};
int tX1 = 900;
int tY1 = 50;
int u = 20;
int[] c = new int[u];
//colours are red, blue, pink, yellow, purple
int[] x1 = new int[u];
int[] y1 = new int[u];
int seconds = 0;
int ballHit = 0;
boolean gameOver = false;
boolean[] hit = new boolean [u];
int t = 100;
int time = 60;

void setup() {
  size(1200, 700);
  colorMode(HSB, 360, 100, 100, t);
  for (int i = 0; i < x1.length; i++) {
    x1[i] = constrain(int(random(10, 1000)), 100, 1000);
    y1[i] = constrain(int(random(1, 400)), 50, 400);
    c[i] = int(random(0, 360));
  }
}

void draw() {
  background1(bX, bY);
  path(pX, pY);
  farm();
  //user defined function
  grass(gX, gY);
  grass(gX1, gY1);
  character(x, y);

  house();

  text1();
  //hit test for door to enter
  //loop for farm
}

void keyPressed() {

  //move character  
  if (!gameOver) {
    if (key == 'a') {
      gX1 += 10; 
      gX += 10; 
      bX += 10;
      pX += 10;
      for (int i = 0; i < hX.length; i++) {
        hX[i] += 10;
      }
      for (int i = 0; i < x1.length; i++) {
        x1[i] += 10;
      }
    }
    if (key == 'd') {
      gX1 -= 10; 
      gX -= 10; 
      bX -= 10;
      pX -= 10;
      for (int i = 0; i < hX.length; i++) {
        hX[i] -= 10;
      }    
      for (int i = 0; i < x1.length; i++) {
        x1[i] -= 10;
      }
    }
    if (key == 's') {
      gY1 -= 10; 
      gY -= 10;
      bY -= 10;
      pY -= 10;
      for (int i = 0; i < hX.length; i++) {
        hY[i] -= 10;
      }
      for (int i = 0; i < x1.length; i++) {
        y1[i] -= 10;
      }
    }
    if (key == 'w') {
      gY1 += 10; 
      gY += 10;
      bY += 10;
      pY += 10;
      for (int i = 0; i < hX.length; i++) {
        hY[i] += 10;
      }
      for (int i = 0; i < x1.length; i++) {
        y1[i] += 10;
      }
    }
  }
}

void mousePressed() {
  t = 50;
}

void mouseReleased() {
  t = 100;
}
