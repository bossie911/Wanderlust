class Grapplepoint {
  int gpX;
  int gpY;
  int grapplerange = 200;
  float gpdist = dist(p.pcenterx, p.pcentery, gpX, gpY);
  boolean gplock;

  float angle;
  float aVel = 0.0;
  float aAcc = 0.0;


  void grapplepoint(int gpX, int gpY) 
  {
    if (dist(p.pcenterx, p.pcentery, gpX, gpY)<=grapplerange) 
    {
      p.inGrappleRange= true;
      println("in grapple range");
    } 
    else 
    {
      p.inGrappleRange = false;
    }
    if (p.playerGrappled == false) {
      gpdist = dist(p.pcenterx, p.pcentery, gpX, gpY);

      angle = atan2(-1*( gpY - p.pcentery), gpX - p.pcenterx) - radians(90);
      aVel = 0.0;
    }
    
    if (p.playerGrappled) {
      p.grounded = false;
      p.speedy = 0;
      stroke(0);
      
      //maakt het touw van de grappling hook
      float ChainAmount = dist(p.x, p.y, gpX, gpY)/12;
      float ChainX = p.pcenterx;
      float DiffX = (p.pcenterx - gpX)/ChainAmount;
      float ChainY = p.pcentery;
      float DiffY = (p.pcentery - gpY)/ChainAmount;
      for(float ChainCount = 0; ChainCount <= dist(p.x, p.y, gpX, gpY)/12 - 1; ChainCount++)
      {
        ChainX -= DiffX;
        ChainY -= DiffY;
        image(Chain, ChainX, ChainY);
      }
      
      //line(p.pcenterx, p.pcentery, gpX, gpY);
      p.x = (gpX + gpdist * sin(angle)) - p.playerwidth/2;
      p.y = (gpY + gpdist * cos(angle)) - p.playerheight/2;

      aAcc =  -0.013 * sin(angle);

      angle = angle + aVel;
      aVel = aVel + aAcc;

      aVel *= 0.98;
    }
    
    //draws the grapple range area
    image(GrappleZone, gpX-200, gpY-200);
  }
}
