class ScoreTimer
{
  public float Timer;
  float Counter = 0;
  float FinalScore = 300;
  float Score = 0;
  float Finaltime;
  float Timerstartvalue = 3000;
  float TimeCount = 0.1;
  float HighScore = 0;
  float HighTime = 999;

  void TimerSetup() {
    Timer = Timerstartvalue;
  }

  void Timer()
  {
    //adds to the timer

    Counter++;

    if (Counter >= 6 && p.iswin == false)
    {
      Timer -= TimeCount;
      Counter = 0;
    }

    if (Timer <= 0)
    {
      d.DrawDeathscreen();
      p.isdead = true;
    }

    //draws the timer and score
    fill(255);
    textSize(40);
    text("Time Left: " + nf(Timer, 0, 1), 600, 50);
    text("Score: " + Score, 40, 50);
    text("Deaths:" + ach.deathcounter, 40, 100);

    //winscreen results
    if (p.iswin == true && levelswitch != 5)
    {
      FinalScore = Timer + Score;
      Finaltime = Timerstartvalue - Timer;
    }

    //winscreen highscore results
    if (p.iswin == true && HighScore < FinalScore && levelswitch != 5)
    {
      HighScore = FinalScore;


       msql.query("UPDATE Highscore SET score = '" + t.FinalScore + "' WHERE idUser ='" + mm.userID + "';");

    }

    //Winscreen hightime results
    if (p.iswin == true && HighTime > Finaltime)
    {
      HighTime = Finaltime;
    }
  }
}
