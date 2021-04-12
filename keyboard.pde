void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'W') skey = true;
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true; 
} //end of void keyPressed--------------------

void keyReleased() { 
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'W') skey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false; 
} //end of void keyReleased--------------------
