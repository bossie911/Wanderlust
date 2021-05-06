class Platform  {
int platformheight;
int platformwidth;
int platformPosX;
int platformPosY;

   

  void drawPlatform(int platformPosX,int platformPosY,int platformwidth,int platformheight){
    fill(255, 0, 255);
    rect(platformPosX, platformPosY, platformwidth, platformheight); // De Spike tekenen
   
   if(p.x + p.playerwidth > platformPosX && p.x < platformPosX + platformwidth && p.y + p.playerheight > platformPosY && p.y < platformPosY + platformheight && p.playerIsFalling == true){ //collision met de player checken
      p.speedy = 0;
      
      p.grounded = true;
      
    
    }
    
    else{
    
    }
  } 
  
  
  
}
