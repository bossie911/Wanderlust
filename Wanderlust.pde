Player p;
Spike s;
WallJump j;
Platform platform1;
Roomwarp roomgoal;
SolidObject o;
Deathscreen d;
Victoryscreen v;
Grapplepoint g;
ScoreTimer t;
Animation playeranimation;
Item item;
Level level;
MainMenu mm;
LevelEnd levelend;
Spawnpoint spawnpoint;
Background b;
Movingobject moveplat;

int levelswitch = 0;
int dyingCounter = 0;
int jumpcounter;
int deathcounter;

import processing.sound.*;
SoundFile bgm;
SoundFile jumpSound;
SoundFile walkSound;

PImage dialogueBox;
PFont font;
PImage falling;
PImage girlfalling;
PImage fallingleft;
PImage girlfallingleft;
PImage keyboard;
PImage statue;
PImage idleframe;
PImage jumpLeft;
PImage jumpRight;
PImage girlidleframe;
PImage girljumpLeft;
PImage girljumpRight;
PImage character1frame;
PImage character2frame;
PImage sign;
PImage Prize;
PImage PrizeGlow;
PImage Chain;
PImage RoomEnd;
int spawningCounter = 0;

PImage itemimage;
PImage Base;
PImage BaseRight;
PImage BaseLeft;
PImage Grass;
PImage TopRight;
PImage TopLeft;
PImage Top;
PImage Bottom;
PImage BottomRight;
PImage BottomLeft;
PImage BrickRightEdge;
PImage BrickLeftEdge;
PImage BrickBase;
PImage HorizontalEdge;
PImage VerticalEdge;
PImage BottomEdge;
PImage VineBase;
PImage VineTopRight;
PImage VineTopLeft;
PImage VineBottomLeft;
PImage VineBottomRight;
PImage Spike;
PImage SpikeLeft;
PImage SpikeRight;
PImage SpikeBottomLeft;
PImage SpikeBottomRight;
PImage SpikeTopLeft;
PImage SpikeTopRight;
PImage SpikeEdgeLeft;
PImage SpikeEdgeRight;
PImage GrappleTop;
PImage GrappleMid;
PImage GrappleBottom;
PImage GrappleZone;
PImage Button;
PImage ButtonHighlight;

PImage Background;
PImage Trees;
PImage Level1img;
PImage Level2img;
PImage Level5img;
HoveredLetter hl;
Achievements ach;
Background[] bi = new Background[20];
PImage SmallCloud;
PImage LargeCloud;
boolean playerInteracting;
boolean playerInteracting2;
PImage xIcon;
PImage cursor;

import de.bezier.data.sql.*;
MySQL msql;

String dbHostID = "oege.ie.hva.nl"; 
String dbUsername = "bosmk";
String dbUserPass = "qC4Hl0.+eZG.2z";
String dbSchema = "zbosmk";

Signpost sign1;
Signpost sign2;

PImage [] deathOrb = new PImage[5];
int imageLoadCounter;
DeathAnimation[] deathBalls = new DeathAnimation[28];
PImage deathscreentransition;

DeathAnimation deathScreenTransition;
boolean playerIsDying = false;



void setup() {
  frameRate(60);
  SmallCloud = loadImage("CloudS.png");
  LargeCloud = loadImage("CloudL.png");
  sign = loadImage("sign.png");
  sign1 = new Signpost();
  xIcon = loadImage("xicon.png");
  dialogueBox = loadImage("Dialoguebox.png");
  deathScreenTransition = new DeathAnimation();
  cursor = loadImage("cursor.png");
  sign2 = new Signpost();

  deathscreentransition = loadImage("deathscreentransition.png");

  for (int i=1; i<= 4; i++) {
    String filename = "deathorb" + i + ".png";
    deathOrb[i] = loadImage(filename);
  }      


  for (int i = 0; i < deathBalls.length; i++) {
    deathBalls[i] = new DeathAnimation();
  }



  msql = new MySQL( this, dbHostID, dbSchema, dbUsername, dbUserPass);

  if (msql.connect()) {
    println("Connected");
  } else {
    println("Yikes, there was an error!");
  }


  for (int i = 0; i < bi.length; i++) 
  {
    bi[i] = new Background();
  }

  falling = loadImage("falling.png");
  girlfalling = loadImage("girlfalling.png");
  fallingleft = loadImage("fallingleft.png");
  girlfallingleft = loadImage("girlfallingleft.png");
  keyboard = loadImage("keyboard.png");
  bgm = new SoundFile(this, "bgm.wav");  
  jumpSound = new SoundFile(this, "jump.wav");  
  walkSound = new SoundFile(this, "walk.wav");
  ach = new Achievements();
  spawnpoint = new Spawnpoint();
  levelend = new LevelEnd();
  level = new Level();
  item = new Item();
  statue = loadImage("statue.png");
  jumpLeft = loadImage("Jumpleft.png");
  jumpRight = loadImage("Jumpright.png");
  idleframe = loadImage("Runcycle1.png");
  girljumpLeft = loadImage("GirlJumpleft.png");
  girljumpRight = loadImage("GirlJumpright.png");
  girlidleframe = loadImage("GirlRuncycle1.png");
  character1frame = loadImage("Character1frame.png");
  character2frame = loadImage("Character2frame.png");
  Prize = loadImage("prize.png");
  PrizeGlow = loadImage("PrizeGlow.png");
  Chain = loadImage("ChainPiece.png");
  RoomEnd = loadImage("RoomEnd.png");
  Trees = loadImage("Trees.png");

  Background = loadImage("Background.png");
  itemimage = loadImage("Gem.png");  
  Level1img = loadImage("Level 1.png");
  Level2img = loadImage("Level 2.png");
  Level5img = loadImage("Level 5.png");

  Base = loadImage("DirtBase.png");
  BaseRight = loadImage("DirtBaseRightEdge.png");
  BaseLeft = loadImage("DirtBaseLeftEdge.png");
  Grass = loadImage("DirtGrass.png");
  BrickRightEdge = loadImage("BrickRightEdge.png");
  BrickLeftEdge = loadImage("BrickLeftEdge.png");
  BrickBase = loadImage("BrickBase.png");
  TopRight = loadImage("DirtRightTopCorner.png");
  TopLeft = loadImage("DirtLeftTopCorner.png");
  Top = loadImage("DirtTopCorners.png");
  BottomRight = loadImage("DirtBottomRightCorner.png");
  BottomLeft = loadImage("DirtBottomLeftCorner.png");
  Bottom = loadImage("DirtBottomEdge.png");
  HorizontalEdge = loadImage("DirtHorizontalEdges.png");
  VerticalEdge = loadImage("DirtVerticalEdges.png");
  BottomEdge = loadImage("DirtBottomEdges.png");
  VineBase = loadImage("VineBase.png");
  VineTopRight = loadImage("VineEdgeLeftTop.png");
  VineTopLeft = loadImage("VineEdgeRightTop.png");
  VineBottomRight = loadImage("VineBottomRightEdge.png");
  VineBottomLeft = loadImage("VineBottomLeftEdge.png");
  Spike = loadImage("SpikeBase.png");
  SpikeRight = loadImage("SpikePointLeft.png");
  SpikeLeft = loadImage("SpikePointRight.png");
  SpikeBottomLeft = loadImage("SpikeBottomLeftEdge.png");
  SpikeBottomRight = loadImage("SpikeBottomRightEdge.png");
  SpikeTopLeft = loadImage("SpikeTopLeftEdge.png");
  SpikeTopRight = loadImage("SpikeTopRightEdge.png");
  SpikeEdgeLeft = loadImage("SpikeEdgeLeft.png");
  SpikeEdgeRight = loadImage("SpikeEdgeRight.png");
  GrappleTop = loadImage("Grapple1.png");
  GrappleMid = loadImage("Grapple2.png");
  GrappleBottom = loadImage("Grapple3.png");
  GrappleZone = loadImage("GrappleZone.png");
  Button = loadImage("Button.png");
  ButtonHighlight = loadImage("ButtonHighlight.png");

  font = loadFont("pixel.vlw");
  size(1300, 800); 
  p = new Player();
  s = new Spike();
  j = new WallJump();
  platform1 = new Platform();
  roomgoal = new Roomwarp();
  o = new SolidObject();
  d = new Deathscreen();
  v = new Victoryscreen();
  g = new Grapplepoint();
  t = new ScoreTimer();  
  playeranimation = new Animation();
  playeranimation.loadImages();
  b = new Background();
  mm = new MainMenu();
  moveplat = new Movingobject();

  t.TimerSetup();
  spawnpoint.spawnPointSetup();

  bgm.amp(0.3);
  bgm.loop();
  walkSound.amp(0.4);
  jumpSound.amp(0.17);
  walkSound.rate(1.5);
  hl = new HoveredLetter();
  textFont(font);
}

void draw() 
{
  tint(255);
  background(140, 200, 220);
  for (int i = 10; i < 18; i++) 
  {
    bi[i].CloudSmall();
  }
  imageMode(CORNER);
  image(Background, 0, 0);
  for (int i = 0; i < 5; i++) 
  {
    bi[i].CloudLarge();
  }

  //noStroke();
  //println(mouseX, mouseY);
  if (p.isdead == false && p.isDying == false)
  {
    deathScreenTransition.deathScreenTransition();
  }

  tint(255);

  switch(levelswitch) {
  case 0: 
    imageMode(CORNER);
    image(Trees, 0, 0);
    imageMode(CENTER);
    p.isDying = false;
    p.isSpawning = false;
    spawningCounter = 0;
    deathcounter = 0;
    deathScreenTransition.deathScreenXPosition = 2000;

    switch(mm.menuState) {
    case 3:
      mm.usernameMenu();
      break;
    case 0:
      mm.TitleMenu();
      break;
    case 1:
      mm.PlayMenu();
      break;
    case 2:
      mm.CharacterMenu();
      break;
    case 4 :
      mm.Leaderboard();
      break;
    }
    mm.menuCursor();

    break;
  case 1:
    level.DrawLevel1();
    break;
  case 2:
    level.DrawLevel2();
    break;
  case 3:
    level.DrawLevel3();
    break;
  case 4:
    level.DrawLevel4();
    break;
  case 5:
    level.DrawLevel5();
    break;
  case 6:
    level.DrawLevel6();
    break;
  case 7:
    level.DrawLevel7();
    break;
  case 8:
    level.DrawLevel8();
    break;
  case 9:
    level.DrawLevel9();
    break;
  case 10:
    level.DrawLevel10();
    break;
  case 11:
    level.DrawLevel11();
    break;
  case 12:
    level.DrawLevel12();
    break;
  case 13:
    level.DrawLevel13();
    break;
  case 14:
    level.DrawLevel14();
    break;
  case 15:
    level.DrawLevel15();
    break;
  case 16:
    level.DrawLevel16();
    break;
  case 17:
    level.DrawLevel17();
    break;
  case 18:
    level.DrawLevel18();
    break;
  case 19:
    level.DrawLevel19();
    break;
  case 20:
    level.DrawLevel20();
    break;
  }


  if (levelswitch != 0)
  {
    t.Timer();


    //The block of code below is responsible for the death animation and respawning of the player.
    if (p.isSpawning == true) {
      spawningCounter ++;
      deathScreenTransition.deathScreenTransition();

      imageMode(CENTER);
      image(deathscreentransition, deathScreenTransition.deathScreenXPosition, height/2);


      if (spawningCounter == 2) {
        spawnpoint.spawnPointSetup();
        p.grounded = false;
      }

      if (spawningCounter < 12) {
        p.speedy = 0;
        p.speedx = 0;
      }

      if (spawningCounter > 60) {
        spawningCounter = 0;
        p.isSpawning = false;
        ;
      }


      deathScreenTransition.deathScreenTransition();

      imageMode(CENTER);
      image(deathscreentransition, deathScreenTransition.deathScreenXPosition, height/2);
    }



    if (p.isDying == true) {
      dyingCounter ++;

      deathScreenTransition.deathScreenXPosition = - 200;
      p.speedy = 0;
      p.speedx = 0;

      if (dyingCounter > 18) {
        dyingCounter = 0;
        p.isDying = false;
        p.isSpawning = true;
      }


      for (int i = 0; i < deathBalls.length; i++) {
        deathBalls[i].updateDeathOrb();
      }


      for (int i = 0; i < deathBalls.length; i++) {
        deathBalls[i].displayDeathOrb();
      }
    }
  }



  if (p.isdead == true) {
    d.DrawDeathscreen();
  }
  if (p.iswin == true) {
    v.DrawVictoryscreen();
  }

  //hard caps player speed
  if (p.speedy > 20)
  {
    p.speedy = 20;
  } else if (p.speedy < -20)
  {
    p.speedy = -20;
  }

  if (p.speedx > 15)
  {
    p.speedx = 15;
  } else if (p.speedx < -15)
  {
    p.speedx = -15 ;
  }
}


void exit()
{
  msql.close();
  bgm.stop();
}

void keyPressed() {    
  
  if(key == 't'){
    levelswitch = 19;
    p.y = 164;
  }
  if (key == 'p') {
    println(mm.username);
    println(mm.userID);
  }

  if (key == 'a' && levelswitch == 0) {
    mm.menuCursorMovingLEFT = true;
  }

  if (key == 'd' && levelswitch == 0) {
    mm.menuCursorMovingRIGHT = true;
  }

  if (key == 'w' && levelswitch == 0) {
    mm.menuCursorMovingUP = true;
  }

  if (key == 's' && levelswitch == 0) {
    mm.menuCursorMovingDOWN = true;
  }

  if (key == ' ' && levelswitch == 0) {
    mm.clicking = true;
  }


  if (key == 'a' || key == 'A') {      
    p.moveLeft = true;
  }

  if (key == 'd' || key == 'D') {    
    p.moveRight = true;
  }

  if ((key == 'a' || key == 'A') && levelswitch > 0 && !p.isdead && !p.iswin && p.grounded) {      
    walkSound.loop();
  }

  if ((key == 'd' || key == 'D') && levelswitch > 0 && !p.isdead && !p.iswin && p.grounded) {    
    p.moveRight = true;
    walkSound.loop();
  }

  if (key == ' ' && p.grounded == true) {
    jumpcounter++;
    msql.query("UPDATE PlayerData SET jumpcount = '" + jumpcounter + "' WHERE idUser ='" + mm.userID + "';");

    p.grounded = false;  
    p.speedy = p.speedy - 20;
    println("jump");
    walkSound.stop();
    jumpSound.play();
    p.landcounter = 0;
    p.landing = false;
    if (levelswitch==1) {
     // ach.jumpcounterlvl++;
      //println(ach.jumpcounterlvl);
    }
  }

  if (key == ' ' && p.onPlatform == true) {
    jumpcounter++;
    msql.query("UPDATE PlayerData SET jumpcount = '" + jumpcounter + "' WHERE idUser ='" + mm.userID + "';");

    p.onPlatform = false;  
    p.speedy = p.speedy - 20;
    jumpSound.play();
    println("jump");
    p.landcounter = 0;
    p.landing = false;
  }

  if (key == ' ' && p.touchingRWall == true) {
    jumpcounter++;
    msql.query("UPDATE PlayerData SET jumpcount = '" + jumpcounter + "' WHERE idUser ='" + mm.userID + "';");

    jumpSound.play();
    p.grounded = false;
    p.touchingRWall = false;
    p.speedy = -20;
    p.speedx = -15;
    println("rightWalljump");
  }
  if (key == ' ' && p.touchingLWall == true) {
    jumpcounter++;
    msql.query("UPDATE PlayerData SET jumpcount = '" + jumpcounter + "' WHERE idUser ='" + mm.userID + "';");

    jumpSound.play();
    p.grounded = false;
    p.touchingLWall = false;
    p.speedy = -20;
    p.speedx = 15;
    println("rightWalljump");
  }
  if (key == ' ' && p.isdead == true) {
    t.TimeCount = 0.1;
    p.isdead = false;
    spawnpoint.spawnPointSetup();
    item.Active = true;
    t.Score -= 60;
    if (t.Score < 0) {
      t.Score = 0;
    }
  }
  if (key == ' ' && p.iswin == true) {
    p.iswin = false;
    levelswitch = 0;
    p.x = 100;
    p.y = 600;
    t.Timer = t.Timerstartvalue;
    item.Active = true;
    mm.clicking = false;

   /* if (ach.flawless==true) {
      msql.query("UPDATE Achievements SET flawless = '1' WHERE idUser ='" + mm.userID + "';");
    }
    if (ach.Flash==true) {
      msql.query("UPDATE Achievements SET Flash = '1' WHERE idUser ='" + mm.userID + "';");
    }
    if (ach.under15jumps==true) {
      msql.query("UPDATE Achievements SET under15jumps = '1' WHERE idUser ='" + mm.userID + "';");
    }
    if (ach.under5jumps==true) {
      msql.query("UPDATE Achievements SET under5jumpslvl1 = '1' WHERE idUser ='" + mm.userID + "';");
    }*/
  }

  if (key == ' ' && p.playerGrappled == true) {
    jumpcounter++;
    msql.query("UPDATE PlayerData SET jumpcount = '" + jumpcounter + "' WHERE idUser ='" + mm.userID + "';");

    p.grappleActive = false;
    p.playerGrappled = false;  
    p.speedy = p.speedy - 20;
    println("jump");
    p.landcounter = 0;
    p.landing = false;
  }
  if (key == 'k' || key == 'K') {
    p.grappleActive = true;
    println("Grappling Hook used");
  }

  if (key == 's' || key == 'S') {
    p.holdingDown = true;
  }

  if (key == '+' || key == '=') {
    levelswitch +=1;
  }

  if (key == '-' || key == '_') {
    levelswitch -=1;
  }  

  if (key == 'o' || key == 'o') {
    if (playerInteracting == false) {
      playerInteracting = true;
    } else if (playerInteracting == true) {
      playerInteracting = false;
    }

    if (playerInteracting2 == false) {
      playerInteracting2 = true;
    } else if (playerInteracting2 == true) {
      playerInteracting2 = false;
    }
  }
}

void keyReleased() {  

  if (key == 'a' && levelswitch == 0) {
    mm.menuCursorMovingLEFT = false;
  }

  if (key == 'd' && levelswitch == 0) {
    mm.menuCursorMovingRIGHT = false;
  }

  if (key == 'w' && levelswitch == 0) {
    mm.menuCursorMovingUP = false;
  }

  if (key == 's' && levelswitch == 0) {
    mm.menuCursorMovingDOWN = false;
  }

  if (key == ' ' && levelswitch == 0) {
    mm.clicking = false;
  }

  if (key == 'a' || key == 'A') {
    p.moveLeft = false;
    walkSound.stop();
  }

  if (key == 'd' || key == 'D') {
    p.moveRight = false;
    walkSound.stop();
  }
  if (key == 'k' || key == 'K') {
    p.grappleActive = false;
    println("Grappling Hook used");
  }

  if (key == 's' || key == 'S') {
    p.holdingDown = false;
  }
}
