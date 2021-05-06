class SolidObject
{ 
  float x1;
  float y1;
  float x2;
  float y2;
  
  float sx;
  float sy;
  float sw;
  float sh;
  
  void DrawImage(float imgX, float imgY, int TextureType)
  {
    //draws object
    if(TextureType == 0)
    {
      image(Base, imgX, imgY);
    }
    else if(TextureType == 1)
    {
      image(Grass, imgX, imgY);
    }
    else if(TextureType == 2)
    {
      image(TopLeft, imgX, imgY);
    }
    else if(TextureType == 3)
    {
      image(TopRight, imgX, imgY);
    }
    else if(TextureType == 4)
    {
      image(Top, imgX, imgY);
    }
    else if(TextureType == 5)
    {
      image(BaseLeft, imgX, imgY);
    }
    else if(TextureType == 6)
    {
      image(BaseRight, imgX, imgY);
    }
    else if(TextureType == 7)
    {
      image(HorizontalEdge, imgX, imgY);
    }
    else if(TextureType == 8)
    {
      image(VerticalEdge, imgX, imgY);
    }
    else if(TextureType == 9)
    {
      image(BottomEdge, imgX, imgY);
    }
    else if(TextureType == 10)
    {
      image(Bottom, imgX, imgY);
    }
    else if(TextureType == 11)
    {
      image(BottomRight, imgX, imgY);
    }
    else if(TextureType == 12)
    {
      image(BottomLeft, imgX, imgY);
    }
    else if(TextureType == 20)
    {
      image(BrickRightEdge , imgX, imgY);
    }
    else if(TextureType == 21)
    {
      image(BrickLeftEdge, imgX, imgY);
    }
    else if(TextureType == 22)
    {
      image(BrickBase, imgX, imgY);
    }
  }
  
  void DrawSystems(float SolidX,  float SolidY, float SolidWidth, float SolidHeight)
  {
    //updates variables
    x1 = p.x;
    y1 = p.y;
    x2 = p.x + p.speedx;
    y2 = p.y + p.speedy;
  
    sx = SolidX;
    sy = SolidY;
    sw = SolidWidth;
    sh = SolidHeight;
    
    //check for collision
    boolean SolidHit = lineRect(x1, y1, x2, y2, sx, sy, sw, sh);
    if(SolidHit)
    {
      
    }
    
    //player platform grounding
    if(p.y + p.playerheight == SolidY && p.x + p.playerwidth <= SolidX || p.y + p.playerheight == SolidY && p.x >= SolidX + SolidWidth)
    {
      p.grounded = false;
    }
    else if(p.y + p.playerheight == SolidY && p.x + p.playerwidth >= SolidX && p.x <= SolidX + SolidWidth)
    {
      p.grounded = true;
      p.landing = true;
      println("player is grounded");
    }
  
  }
  
  boolean lineRect(float x1, float y1, float x2, float y2, float rx, float ry, float rw, float rh) 
  {
    //checks for edge collision
    boolean left1 = lineLine(x1+p.playerwidth,y1,x2+p.playerwidth,y2, rx,ry,rx,ry+rh);
    boolean left2 = lineLine(x1+p.playerwidth,y1+p.playerheight,x2+p.playerwidth,y2+p.playerheight, rx,ry,rx,ry+rh);
    boolean right1 = lineLine(x1,y1,x2,y2, rx+rw,ry,rx+rw,ry+rh);
    boolean right2 = lineLine(x1,y1+p.playerheight,x2,y2+p.playerheight, rx+rw,ry,rx+rw,ry+rh);
    boolean top1 = lineLine(x1,y1+p.playerheight,x2,y2+p.playerheight, rx,ry,rx+rw,ry);
    boolean top2 = lineLine(x1+p.playerwidth,y1+p.playerheight,x2+p.playerwidth,y2+p.playerheight, rx,ry,rx+rw,ry);
    boolean bottom1 = lineLine(x1,y1,x2,y2, rx,ry+rh,rx+rw,ry+rh);
    boolean bottom2 = lineLine(x1+p.playerwidth,y1,x2+p.playerwidth,y2, rx,ry+rh,rx+rw,ry+rh);
    
    if((left1 || left2) && p.speedx > 0)
    {
      p.x = sx - p.playerwidth - 1;
      p.speedx = 0;
      return true;
    }
    else if((right1 || right2) && p.speedx < 0)
    {
      p.x = sx + sw + 1;
      p.speedx = 0;
      return true;
    }
    else if((top1 || top2) && p.speedy > 0)
    {
      p.y = sy - p.playerheight;
      p.speedy = 0;
      return true;
    }
    else if((bottom1 || bottom2) && p.speedy < 0)
    {
      p.y = sy + sh + 1;
      p.speedy = 0;
      return true;
    }
  return false;
  }
    
  boolean lineLine(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4)
  {
    float uA = ((x4-x3)*(y1-y3) - (y4-y3)*(x1-x3)) / ((y4-y3)*(x2-x1) - (x4-x3)*(y2-y1));
    float uB = ((x2-x1)*(y1-y3) - (y2-y1)*(x1-x3)) / ((y4-y3)*(x2-x1) - (x4-x3)*(y2-y1));

    // if uA and uB are between 0-1, lines are colliding
    if (uA >= 0 && uA <= 1 && uB >= 0 && uB <= 1) 
    {
    return true;
    }
  return false;
  }
}
