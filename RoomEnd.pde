class Roomwarp
{
  int RoomEndX, RoomEndY;
  boolean touchingRoomend = false;
  boolean bAchievementstriggered = false;


  void DrawRoomwarp(float RoomEndX, float  RoomEndY, float SizeX, float SizeY) 
  {
    //visuals
    image(RoomEnd, RoomEndX, RoomEndY + SizeY - 64);
    
    //collision check
    if (p.x + p.playerwidth >= RoomEndX && p.x <= RoomEndX + SizeX && p.y + p.playerheight >= RoomEndY && p.y <= RoomEndY + SizeY) 
    {
      
      //room change
      //CheckAchievement();
      touchingRoomend = true;
      levelswitch = levelswitch + 1; 
      
      // p.x en p.y het zelfde als player spawn point
      spawnpoint.spawnPointSetup();
      
      p.grounded = false;
      item.Active = true;
      p.speedx = 0;
      p.speedy = 0;
      deathScreenTransition.deathScreenXPosition = - 200;
      p.isSpawning = true;
      bAchievementstriggered = false;
      
    } 
    else 
    {
      touchingRoomend = false;
    }
  }
     
 /*void CheckAchievement()
  {
    //checken is het de eerste room en level en heb je minder dan 5 jumps 
    if(bAchievementstriggered == false)
    {
      ach.getunder5jumps();
      bAchievementstriggered = true;
    }
    if(ach.under5jumps==true)
    {
      println("under5jumps");
    }
  }*/
}
