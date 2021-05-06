class Spike {

  //tekent de texuters van de spike
  void DrawSpike(int SpikeX, int SpikeY, int SpikeCount)
  {
    if (SpikeCount == 0)
    {
      image(Spike, SpikeX, SpikeY);
    } else if (SpikeCount == 1)
    {
      image(SpikeLeft, SpikeX, SpikeY);
    } else if (SpikeCount == 2)
    {
      image(SpikeRight, SpikeX, SpikeY);
    } else if (SpikeCount == 3)
    {
      image(SpikeTopLeft, SpikeX, SpikeY);
    } else if (SpikeCount == 4)
    {
      image(SpikeBottomLeft, SpikeX, SpikeY);
    } else if (SpikeCount == 5)
    {
      image(SpikeTopRight, SpikeX, SpikeY);
    } else if (SpikeCount == 6)
    {
      image(SpikeBottomRight, SpikeX, SpikeY);
    }
  }

  //stilstaande spike hitbox
  void SpikeSystems(int spikePosX, int spikePosY, int spikewidth, int spikeheight)
  {
    if (p.x + p.playerwidth > spikePosX && p.x < spikePosX + spikewidth && p.y + p.playerheight > spikePosY && p.y < spikePosY + spikeheight && p.isDying == false) { //collision met de player checken

      deathcounter++;
      msql.query("UPDATE PlayerData SET deathcount = '" + deathcounter + "' WHERE idUser ='" + mm.userID + "';");

      for (int i = 0; i < deathBalls.length; i++) {
        deathBalls[i].spawnDeathOrb();
      }
      // p.x en p.y het zelfde als player spawn point   

      ach.deathcounter = ach.deathcounter + 1;
      p.grounded = false;
      println("collision with spike");

      p.isDying = true;

      p.x = - 3000;
      p.y = - 300000;
    }
  }

  float snelheidSpike = 0.5;
  int bewegingMovingSpike = 64;
  float SpikeYDif;
  float SpikeXDif;
  float MovingSpikeY;
  float MovingSpikeX;

  void DrawMovingSpike(int MovingSpikeXStart, int MovingSpikeYStart, int MovingSpikeWidth, int MovingSpikeHeight, int MovingSpikeCount, int XofY) {
    if (XofY == 1) {
      if (SpikeYDif > bewegingMovingSpike) {
        snelheidSpike = -snelheidSpike;
      }

      if (SpikeYDif < -bewegingMovingSpike) {
        snelheidSpike = -snelheidSpike;
      }
      SpikeYDif = SpikeYDif + snelheidSpike;
      MovingSpikeY = MovingSpikeYStart - SpikeYDif;
      MovingSpikeX = MovingSpikeXStart;
    }

    if (XofY == 0) {
      if (SpikeXDif > bewegingMovingSpike) {
        snelheidSpike = -snelheidSpike;
      }

      if (SpikeXDif < -bewegingMovingSpike) {
        snelheidSpike = -snelheidSpike;
      }
      SpikeXDif = SpikeXDif + snelheidSpike;
      MovingSpikeX = MovingSpikeXStart - SpikeXDif;
      MovingSpikeY = MovingSpikeYStart;
    }

    if (MovingSpikeCount == 0)
    {
      image(Spike, MovingSpikeX, MovingSpikeY);
    } else if (MovingSpikeCount == 1)
    {
      image(SpikeLeft, MovingSpikeX, MovingSpikeY);
    } else if (MovingSpikeCount == 2)
    {
      image(SpikeRight, MovingSpikeX, MovingSpikeY);
    }
    else if (MovingSpikeCount == 7)
    {
      image(SpikeEdgeRight, MovingSpikeX, MovingSpikeY);
    }
    else if (MovingSpikeCount == 8)
    {
      image(SpikeEdgeLeft, MovingSpikeX, MovingSpikeY);
    }
    if (p.x + p.playerwidth > MovingSpikeX && p.x < MovingSpikeX + MovingSpikeWidth && p.y + p.playerheight > MovingSpikeY && p.y < MovingSpikeY + MovingSpikeHeight && p.isDying == false) { //collision met de player checken

      deathcounter++;
      msql.query("UPDATE PlayerData SET deathcount = '" + deathcounter + "' WHERE idUser ='" + mm.userID + "';");

      for (int i = 0; i < deathBalls.length; i++) {
        deathBalls[i].spawnDeathOrb();
      }
      p.isDying = true; 
      p.x = - 3000;
      p.y = - 300000;
      ach.deathcounter = ach.deathcounter + 1;
      p.grounded = false;
      println("collision with MovingSpike");
    }
  }
}
