class WallJump {
  int rwallheight;
  int rwallwidth;
  int rwallPosX;
  int rwallPosY;

  void WallVisual(float WallX, float WallY, int WallCount)
  {
    if (WallCount == 0)
    {
      image(VineBase, WallX, WallY);
    } else if (WallCount == 1)
    {
      image(VineTopRight, WallX, WallY);
    } else if (WallCount == 2)
    {
      image(VineBottomRight, WallX, WallY);
    } else if (WallCount == 3)
    {
      image(VineTopLeft, WallX, WallY);
    } else if (WallCount == 4)
    {
      image(VineBottomRight, WallX, WallY);
    }
  }

  void drawRWall(int rwallPosX, int rwallPosY, int rwallwidth, int rwallheight)
  {
    //collision
    if (p.x + p.playerwidth > rwallPosX && p.x < rwallPosX + rwallwidth && p.y + p.playerheight > rwallPosY && p.y < rwallPosY + rwallheight && !p.holdingDown && !p.grounded)
    { 
      //collision met de player checken
      p.speedx = 0;
      p.touchingRWall = true;
    } 
    else if (p.x + p.playerwidth > rwallPosX && p.x < rwallPosX + rwallwidth && p.y > rwallPosY + rwallheight) 
    {
      p.touchingRWall = false;
    }
  }

  void drawLWall(int lwallPosX, int lwallPosY, int lwallwidth, int lwallheight)
  {
    //collision
    if (p.x + p.playerwidth > lwallPosX && p.x < lwallPosX + lwallwidth && p.y + p.playerheight > lwallPosY && p.y < lwallPosY + lwallheight && !p.holdingDown && !p.grounded)
    {
      p.speedx = 0;
      p.touchingLWall = true;
    } 
    else if (p.x + p.playerwidth > lwallPosX && p.x < lwallPosX + lwallwidth && p.y > lwallPosY + lwallheight) 
    {
      p.touchingLWall = false;
    }
    
    if(p.holdingDown || p.grounded){
      p.touchingLWall = false;
      p.touchingRWall = false;
    }
  }
}
