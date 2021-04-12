//pong!
//Chloe Lin 
//1-4A
//April 1 2021 

//mode framework
int mode; 
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables (paddle and ball)
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy;
boolean AI;

//keyboard variables 
boolean wkey, skey, upkey, downkey; 

//scoring
int leftscore, rightscore, timer;

//colours
color  silver = #F0EEED;
color  skyblue = #D4E9FF;
color  lightblue = #B1D8DD;
color  dustyblue = #B7CBE3;
color  lavender = #C0B6D6;
color  pink  = #EBA4C6;
color  rose = #F78DA2;
color  yellow = #F8F087;
color  white = #FFFFFD;
color  black = #000000;
color  cream = #ECDBBC;
color  brown = #40230C;

//font
PFont babyblocks;

//sound variables 
Minim minim;
AudioPlayer intro, pong, sad, gameover;

void setup() {
  size(800, 600);
  mode = INTRO;
  
  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200; 
  
  //initialize ball 
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  //initialize keyboard variables 
  wkey = skey = upkey = downkey = false;
  
  //initialize target
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //initialize score 
  rightscore = leftscore = 0;
  timer = 100;
  
  //font
  babyblocks = createFont("babyblocks.ttf", 70);
  
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;  
  
  //minim 
  minim = new Minim(this);
  intro = minim.loadFile("intro.mp3");
  pong = minim.loadFile("pong.mp3");
  sad = minim.loadFile("sad.mp3");
  gameover = minim.loadFile("gameover.mp3");
  
} //end of void setup----------------

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
  
} //end of void draw-----------------
