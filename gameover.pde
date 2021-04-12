void gameover() {
  intro.pause();
  sad.pause();
  gameover.play();
  
  if(leftscore > rightscore) 
  {
    fill(rose);
    textFont(babyblocks);
    textSize(30);
    text("LEFT PLAYER WINS!", 120, height/3);
  }
  else 
  {
    fill(dustyblue);
    textSize(30);
    text("RIGHT PLAYER WINS!", 210, height/3);
  }
  
} //end of void gameover-------------

void gameoverClicks() {
  mode = INTRO;
  leftscore = rightscore = 0;
  vx = random(-5, 5);
  vy = random(-5, 5);
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200; 
  
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  intro.rewind();
  gameover.pause();
  
} //end of gameoverClicks---------------
