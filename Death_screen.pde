class Deathscreen
{
  
void DrawDeathscreen(){
  background(0);
  textSize(100);
  fill(255);
  text("Oops, you died", 250,250);
  textSize (75);
  fill(255);
  text("Press space / A to retry", 80, 400);
  p.touchingRWall = false;
  p.touchingLWall = false;
  p.speedx = 0;
  p.speedy = 0;
  
  t.TimeCount = 0;
  if(t.Timer <= 0)
  {
    ach.deathcounter = 0;
    t.Timer = 120;
    levelswitch = 1;
  }
}
}
