class LevelEnd
{
  int PowerupScale = 32;
  boolean Active = true;
  boolean bAchievementscheck = false;

  void DrawLevelEnd(int LevelEndX, int LevelEndY) {
    //collision check
    if(p.x + p.playerwidth >= LevelEndX && p.x <= LevelEndX + PowerupScale && p.y + p.playerheight >= LevelEndY && p.y <= LevelEndY + PowerupScale) {
       p.iswin = true;
      // p.x en p.y het zelfde als player spawn point
      p.x = 30;
      p.y = 450;
      p.grounded = false;
     ach.deathcounter = 0;
      //Achievementscheck();

      //Active = false;
    }

    //powerup visuals
    if(Active == true) {
      image(Prize, LevelEndX, LevelEndY);
      image(PrizeGlow, LevelEndX - 10, LevelEndY - 10);
    }
  }
  
  
  /*void Achievementscheck(){

    if(bAchievementscheck==false){
        ach.getflawless();
        ach.getFlash();
        ach.getunder15jumps();
        bAchievementscheck=true;
        if(ach.flawless==true){
          println("flawless");
        }
        if(ach.Flash==true){
          println("Flash");
        }
        if(ach.under15jumps==true){
          println("under15jumps");
        }
          }
        }*/
}
