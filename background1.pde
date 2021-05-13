void background1(int rX1, int rY1) { 
  background(#5b5bff); //blue 

  //land
  noStroke();
  fill(#5aad5a); //green
  rect(rX1, rY1, 1050, 340); 
  rect(rX1 + 50, rY1 - 50, 1000, 50);
  rect(rX1 + 100, rY1 - 100, 950, 50); 
  rect(rX1 + 50, rY1 + 340, 1000, 60);
  rect(rX1 + 150, rY1 + 400, 800, 60);
}

void house() {
  for (int i = 0; i < hX.length; i++) {
    stroke(#323232);
    fill(#e0c1a3, t); //light brown
    rect(hX[i] + 5, hY[i] + 40, 80, 40);
    fill(c[i], 100, 100, t);//random colour
    rect(hX[i], hY[i], 90, 50); //roof
  }
}

void tree() {
  strokeCap(ROUND);
  stroke(1);
  fill(#2d562d); //green
  triangle(tX1, tY1, tX1 + 5, tY1 + 50, tX1 - 5, tY1 + 50);
}

void grass(int x1, int y1) {
  for (int i = 0; i < 8; i++) {
    stroke(#2d562d, t); //green
    strokeWeight(2);
    line(x1, y1, x1, y1 + 25);
    line(x1 - 15, y1 + 10, x1, y1 + 25);
    line(x1 + 15, y1 + 10, x1, y1 + 25);
    y1 += 40;
  }
}

void path(int pX1, int pY1) {
  strokeCap(PROJECT);
  stroke(#ffe5b4); //beige
  strokeWeight(43);
  line(pX1, pY1, pX1 + 100, pY1);
  line(pX1 + 110, pY1, pX1 + 110, pY1 - 50);
  line(pX1 + 150, pY1 - 50, pX1 + 550, pY1 - 50);
  line(pX1 + 580, pY1 - 50, pX1 + 580, pY1 + 200);
  line(pX1 + 580, pY1 + 240, pX1 + 750, pY1 + 240);
  line(pX1 + 350, pY1 + 100, pX1 + 800, pY1 + 100);
  line(pX1 + 350, pY1 + 100, pX1 + 350, pY1 + 250);
  line(pX1 + 50, pY1 + 150, pX1 + 350, pY1 + 150);
  line(pX1 + 50, pY1 + 150, pX1 + 50, pY1 + 200);
}
