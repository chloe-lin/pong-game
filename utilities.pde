void rectTactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(brown);
    strokeWeight(5);
  } else {
    stroke(yellow);
    strokeWeight(5);
  }
  
  rect(x, y, w, h);
}
