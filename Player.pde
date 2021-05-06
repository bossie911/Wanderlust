class Player {
  float x;
  float y;
  float speedx;
  float speedy = 0;
  float maxspeedx = 10;
  float gravity = 1;
  float accel = 0.3;
  float playerheight = 32;
  float playerwidth = 32;
  boolean grounded = false;
  boolean moveLeft = false;
  boolean moveRight = false;
  boolean touchingRWall = false;
  boolean touchingLWall = false;
  boolean playerIsFalling = false;
  boolean onPlatform;
  boolean isdead = false;
  boolean isDying = false;
  boolean isSpawning = false;
  boolean iswin = false;
  boolean inGrappleRange = false;
  boolean playerGrappled = false;
  boolean grappleActive = false;
  float pcenterx = x + playerwidth/2;
  float pcentery = y + playerheight/2;
  int characterindex = 0;
  float spriteHeight;
  float spriteWidth;
  boolean landing = false;
  int landcounter = 0;
  float spritePosX;
  float spritePosY;
  boolean holdingDown = false;

  void display() {
    fill(255);
    imageMode(CENTER);

    if (grounded) {
      playerIsFalling = false;
    }

    if (speedy == 1) {
      landcounter = 0;
      landing = false;
    }


    spritePosX = p.x+18;
    spritePosY = p.y+7;

    spriteWidth = 100 + (speedx * 3);

    if (speedx < 0) {
      spriteWidth = 100 - (speedx * 3);
    }

    if (speedx == 0) {
      spriteWidth = 100;
    }

    if (speedy == 0) {
      spriteHeight = 100;
    }

    if (!grounded) {

      if (speedy < 0) {
        spriteHeight = 100 - (speedy * 3);
        spriteWidth = 100 + (speedy * 1.5);
      }

      if (speedy > 0) {
        spriteHeight = 100 + (speedy * 3);
        spriteWidth = 100 - (speedy * 1.5);
      }
    }

    if (landing == true) {
      landcounter ++;

      if (landcounter < 10) {
        spriteWidth = spriteWidth + 20;
        spriteHeight = spriteHeight - 20;
        spritePosY = spritePosY + 10;
      }

      if (landcounter > 10 && landcounter < 20) {
        spriteWidth = spriteWidth - 20;
        spriteHeight = spriteHeight + 20;
        spritePosY = spritePosY - 10;
      }
    }


    switch(characterindex) {
    case 0:
      if (grounded && !moveRight && !moveLeft) {
        image(idleframe, spritePosX, spritePosY, spriteWidth, spriteHeight);
      } else  if (playerIsFalling && moveLeft) {
        image(fallingleft, spritePosX, spritePosY, spriteWidth, spriteHeight);
      } else  if (playerIsFalling) {
        image(falling, spritePosX, spritePosY, spriteWidth, spriteHeight);
      } else if (!grounded && moveRight) {
        image(jumpRight, spritePosX, spritePosY, spriteWidth, spriteHeight);
      } else
        if (!grounded && moveLeft) {
          image(jumpLeft, spritePosX, spritePosY, spriteWidth, spriteHeight);
        } else
          if (!grounded) {
            image(jumpRight, spritePosX, spritePosY, spriteWidth, spriteHeight);
          } 
      break;

    case 1:
      if (grounded && !moveRight && !moveLeft) {
        image(girlidleframe, spritePosX, spritePosY, spriteWidth, spriteHeight);
      } else  if (playerIsFalling && moveLeft) {
        image(girlfallingleft, spritePosX, spritePosY, spriteWidth, spriteHeight);
      } else  if (playerIsFalling) {
        image(girlfalling, spritePosX, spritePosY, spriteWidth, spriteHeight);
      } else if (!grounded && moveRight) {
        image(girljumpRight, spritePosX, spritePosY, spriteWidth, spriteHeight);
      } else
        if (!grounded && moveLeft) {
          image(girljumpLeft, spritePosX, spritePosY, spriteWidth, spriteHeight);
        } else
          if (!grounded) {
            image(girljumpRight, spritePosX, spritePosY, spriteWidth, spriteHeight);
          } 
      break;
    }


    pcenterx = x + playerwidth/2;
    pcentery = y + playerheight/2;

    imageMode(CORNER);
  }

  void behavior()
  {
    y = y + speedy;
    x = x + speedx;

    if (y + playerheight < height && grounded == false && onPlatform == false && speedy < 20 && playerGrappled == false)
    {
      speedy = speedy + gravity;
    }

    if (inGrappleRange == true && grappleActive == true)
    {
      playerGrappled = true;
    }

    if (grappleActive == false)
    {  
      playerGrappled = false;
    }

    if (y > height && p.isDying == false)
    {  
      deathcounter++;
      msql.query("UPDATE PlayerData SET deathcount = '" + deathcounter + "' WHERE idUser ='" + mm.userID + "';");
      
      for (int i = 0; i < deathBalls.length; i++) {
      deathBalls[i].spawnDeathOrb();
    }
      
      isDying = true;
      p.x = - 3000;
      p.y = - 300000;
      
      ach.deathcounter++;
    }

    if (touchingRWall == true)
    {
      speedy = 1;
    }

    if (touchingLWall == true)
    {
      speedy = 1;
    }

    if (speedy>0)
    {
      playerIsFalling = true;
    }
  }

  void control()
  {
    if (moveRight == true)
    {
      if (speedx < maxspeedx)
      {
        speedx = speedx + accel;
      }
    }

    if (moveRight == false && speedx > 0)
    {
      speedx = speedx - (3*accel);
    }

    if (moveLeft == true)
    {
      if (speedx > -maxspeedx)
      {
        speedx = speedx - accel;
      }
    }

    if (moveLeft == false && speedx < 0)
    {
      speedx = speedx + (3*accel);
    }

    if (moveLeft == false && moveRight == false && speedx > -1 && speedx < 1)
    {
      speedx = 0;
    }

    if ( y <= 0)
    {
      speedy = 0;
      y = 1;
    }
  }
}
