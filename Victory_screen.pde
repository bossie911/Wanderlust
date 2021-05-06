class Victoryscreen{

void DrawVictoryscreen(){
  background(0);
  textSize(100);
  fill(255);
  text("You won!", 250, 250);
  textSize (40);
  fill(255);
  text("Thank you for playing our game", 175, 300);
  text("your time is: " + nf(t.Finaltime, 0, 3), 175, 340);
  text("your score is: " + nf(t.FinalScore, 0, 1), 175, 380);
  text("Your Highest Score is: " + nf(t.HighScore, 0, 1), 175, 600);
  text("Your Best Time is: " + nf(t.HighTime, 0, 3), 175, 560);
  
  textSize (70);
  fill(255);
  text("Press space to go to main menu", 80, 450);
  p.touchingLWall = false;
  p.touchingRWall = false;
  p.speedx = 0;
  p.speedy = 0;
  }
}
