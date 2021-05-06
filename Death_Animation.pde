class DeathAnimation {

  float xOrbPosition;
  float yOrbPosition;
  float xOrbSpeed  = random (-5, 5);
  float yOrbSpeed  = random (-5, 5);
  float orbSize = random (20, 50);
  float orbOpacity = random(200, 250);
  float orbFadeSpeed = 10;
  int orbFrameCounter = 0;

  float deathScreenXPosition = -2000;
  float deathScreenSpeed = 130;


  void spawnDeathOrb() {
    xOrbPosition = p.x;
    yOrbPosition = p.y;
    xOrbSpeed  = random (-5, 5);
    yOrbSpeed  = random (-5, 5);
    orbOpacity = random(200, 250);
  }

  void updateDeathOrb() {
    imageMode(CENTER);

    if (xOrbSpeed > -1 && xOrbSpeed < 1) {
      xOrbSpeed  = random (-10, 10);
    }

    if (yOrbSpeed > -1 && yOrbSpeed < 1) {
      yOrbSpeed  = random (-10, 10);
    }     

    xOrbPosition += xOrbSpeed;
    yOrbPosition += yOrbSpeed;
    orbOpacity -= orbFadeSpeed;
    orbFrameCounter ++;
    if (orbFrameCounter > 4) {
      orbFrameCounter = 0;
    }
  }

  void displayDeathOrb() {
    tint(255, orbOpacity);

    switch(orbFrameCounter) {
    case 1:
      image(deathOrb[1], xOrbPosition, yOrbPosition, orbSize, orbSize);
      break;
    case 2:
      image(deathOrb[2], xOrbPosition, yOrbPosition, orbSize, orbSize);
      break;
    case 3:
      image(deathOrb[3], xOrbPosition, yOrbPosition, orbSize, orbSize);
      break;
    case 4:
      image(deathOrb[4], xOrbPosition, yOrbPosition, orbSize, orbSize);
      break;
    }
  }


  void deathScreenTransition() {
    tint(0);
    imageMode(CENTER);

    if (levelswitch != 0) {
      image(deathscreentransition, deathScreenTransition.deathScreenXPosition, height/2);
      image(deathscreentransition, deathScreenTransition.deathScreenXPosition - 1300, height/2);

      deathScreenXPosition += deathScreenSpeed;
    }
  }
}
