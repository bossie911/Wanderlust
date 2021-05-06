class Background
{
  //sets values
  float PosX = random(-700, width);
  float LargePosY = random(100, 350);
  float SmallPosY = random(200, 300);
  float CloudSpeed = random(10, 20);

  //draws beeg cloud
  void CloudLarge()
  {
    imageMode(CORNER);
    image(LargeCloud, PosX, LargePosY);
    PosX += (CloudSpeed/10);

    if (PosX > width)
    {
      PosX = random(-1500, -300);
      LargePosY = random(100, 350);
      CloudSpeed = random(10, 20);
    }

    if (roomgoal.touchingRoomend) {
      PosX = random(-1500, width);
      LargePosY = random(100, 350);
      CloudSpeed = random(10, 20);
    }
  }

  //draw small cloud
  void CloudSmall()
  {
    imageMode(CORNER);
    image(SmallCloud, PosX, SmallPosY);
    PosX += (CloudSpeed/20);

    if (PosX > width)
    {
      PosX = random(-1500, -300);
      SmallPosY = random(200, 350);
      CloudSpeed = random(10, 20);
    }

    if (roomgoal.touchingRoomend) {
      PosX = random(-1500, width);
      SmallPosY = random(200, 350);
      CloudSpeed = random(10, 20);
    }
  }
}
