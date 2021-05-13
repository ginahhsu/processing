void farm() {
  //random coloured balls
  for (int i = 0; i < x1.length; i++) {
    fill(c[i], 100, 100);
    noStroke();
    if (hit[i] == false) {
      ellipse(x1[i], y1[i], s, s);
    }
    if (y <= y1[i] + s / 2 && y >= y1[i] - s / 2
      && x <= x1[i] + s / 2 && x >= x1[i] - s / 2 && hit[i] == false) {
      hit[i] = true;
      println(ballHit);
      ballHit = ballHit + 1;
    }
  }
  if (ballHit >= u) {
    gameOver = true;
    fill(#000000);
    text("You Win!", width / 2, height / 2);
    text("Balls found: " + u, width / 2, (height / 2) + 20);
    text("Time: " + (seconds / 60), width / 2, (height / 2) + 40);
  }
}
