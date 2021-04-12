void game() {
  intro.play();
  
  background(cream);
  
  //center line 
  strokeWeight(5);
  stroke(silver);
  line(width/2, 0, width/2, height);
  
  //scoreboard
  textSize(50);
  fill(rose);
  textFont(babyblocks);
  text(leftscore, width/4, 100);
  fill(dustyblue);
  text(rightscore, 3*width/4, 100);
  //fill(skyblue);
  //text(timer, 3*width/4, 550);
  timer = timer - 1;
  
  //draw paddles
  fill(rose);
  circle(leftx, lefty, leftd);
  fill(dustyblue);
  circle(rightx, righty, rightd);
  
  //move paddles (to do: make paddles stop at end of screen)
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
 
  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {
    if (ballx > width/2) {
      if (bally > righty) {
        righty = righty + 2;
      }
      if (bally < righty) {
        righty = righty - 2;
      }
     }
    }
    
  //ball
  fill(lavender);
  circle(ballx, bally, balld);
  
  //bounce ball 
  if (timer < 0) {
  ballx = ballx + vx; 
  bally = bally + vy;
  }
  
  //paddle stay on screen 
  if (lefty < 0+leftd/2)
  {
   lefty = leftd/2;
  }

  if (lefty > height-leftd/2)
  {
   lefty = height-leftd/2;
  }
  
  if (righty < 0+rightd/2)
  {
   righty = rightd/2;
  }
  if (righty > height-rightd/2)
  {
   righty = height-rightd/2;
  } 
 
 //ball stay on screen 
 if (bally < 0+balld/2)
  {
   bally = balld/2;
  ballx = ballx + vx; 
  bally = bally + vy;
  } 
  
   if (bally > height-balld/2)
  {
   bally = height-balld/2;
   ballx = ballx + vx; 
   bally = bally + vy;
  }
  
  if (leftscore == 3) {
    leftscore = 3;
    mode = GAMEOVER;
  }
  
   if (rightscore == 3) {
    rightscore = 3;
    mode = GAMEOVER;
  }
  

  //scoring
  if (ballx < 0) 
  {
    rightscore++; //= rightscore = rightscore+1
    sad.rewind();
    sad.play();
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
 
   if (ballx > width) 
  {
    leftscore++; //= rightscore = rightscore+1
    sad.rewind();
    sad.play();
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
 
  //bouncing ball on walls 
  if (bally < 0+balld/2 || bally > height-balld/2) {
    pong.rewind();
    pong.play();
    vy = vy * -1; 
  } 
 
  
  
  //circle collisions 
  if (dist(leftx, lefty, ballx, bally) <= (leftd/2 + balld/2)) {
    vx = (ballx-leftx)/10;
    vy = (bally-lefty)/10;
    pong.rewind();
    pong.play();
  } 
  
  if (dist(rightx, righty, ballx, bally) <= (rightd/2 + balld/2)) {
    vx = (ballx-rightx)/10;
    vy = (bally-righty)/10;
    pong.rewind();
    pong.play();
  } 
 
  
} //end of void game--------------

void gameClicks() {
    mode = PAUSE;
  
} //end of void gameClicks----------------
