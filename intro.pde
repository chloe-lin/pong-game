void intro() {
  intro.play();
  
  background(cream);
  
  //screen
  fill(pink);
  stroke(lightblue);
  strokeWeight(3);
  textFont(babyblocks);
  textSize(50);
  text("pong!", 350, 200);
  textSize(30);
  fill(rose);
  text("one player - w and s keys", 280, 250);
  text("two players - w and s keys, up and down keys", 140, 300);
  
  //one player button
  fill(pink);
  rectTactile(150, 450, 200, 100);
  rect(150, 450, 200, 100);
  fill(brown);
  textSize(30);
  text("one player", 180, 500);
  
  //two players button 
  fill(pink);
  rectTactile(450, 450, 200, 100);
  rect(450, 450, 200, 100);
  fill(brown);
  textSize(30);
  text("two players", 480, 500);
  
} //end of void intro----------------

void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
    mode = GAME;
    AI = true;
  }
  if (mouseX > 450 && mouseX < 650 && mouseY > 450 && mouseY < 550) {
    mode = GAME;
    AI = false; 
  }
} //end of void introClicks--------------
