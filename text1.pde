void text1() {
  fill(#000000, 50);
  rect(width - 175, 0, 175, 75);
  textSize(20);
  fill(#ffffff);
  text("Seconds: " + (time - seconds / 60), width - 150, 30);
  text("Balls left: " + (u - ballHit), width - 150, 55);

  if (!gameOver) {
    seconds = seconds + 1;
  }
}
