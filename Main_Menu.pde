class MainMenu {
  boolean clicking = false;
  int maxusers = 10;
  int menuState = 3;
  String username;
  String userletter1 = "?";
  String userletter2 = "?";
  String userletter3 = "?";
  String geslacht;
  String [] naam = new String[maxusers];
  int [] score = new int[maxusers];
  int Yoffset = 0;
  int Display;
  int BesteScore;
  int users;

  int currentLetter = 1;
  int userID;

  float menuCursorX = 650, menuCursorY = 400, menuCursorSpeed =10;
  boolean menuCursorMovingUP, menuCursorMovingDOWN, menuCursorMovingLEFT, menuCursorMovingRIGHT;

  void usernameMenu() {
    menuCursorSpeed = 20;
    imageMode(CORNER);
    image(keyboard, 170, 270);
    fill(20,170,0);
    rect(200, 220, 290, 10);
    rect(510, 220, 290, 10);
    rect(820, 220, 290, 10);

    switch(currentLetter) {
    case 1:
      fill(10,100,0);
      rect(200, 240, 290, 10);
      fill(255);
      break;
    case 2:
      fill(10,100,0);
      rect(510, 240, 290, 10);
      fill(255);
      break;
    case 3:
      fill(10,100,0);
      rect(820, 240, 290, 10);
      fill(255);
      break;
    }

    hl.getHoveredLetter();
    textSize(190);
    text(userletter1, 280, 190);
    text(userletter2, 590, 190);
    text(userletter3, 900, 190);
    textSize(32);

    if (clicking && hl.hoveringOK) {
      username = userletter1 + userletter2 + userletter3;
      clicking = false;
      menuState = 0;


      // Kevin/Mika idUser pakken
      msql.query("SELECT idUser FROM User WHERE name = '" + username + "';");
      while (msql.next()) {
        userID = msql.getInt("idUser");
      }

      if (userID == 0) {
        //Mika/Kevin Al bestaad de user nog niet dan maken we de idUser aan en pakken we die vervolgens       
        msql.query("INSERT INTO User (name) VALUES ('" + username + "');");
        msql.query("SELECT idUser FROM User WHERE name = '" + username + "';");
        while (msql.next()) {
          userID = msql.getInt("idUser");
        }
        //Kevin/Mika al is de gebruiker nieuw word zijn highscore op 0 gezet
        msql.query("INSERT INTO Highscore (idUser, score) VALUES ('" + mm.userID + "', '0');");

        //olivier als de user id nog niet bestaat dan wordt er waarde 0 opgeslagen voor karakter       
        msql.query("INSERT INTO Opties (idUser, Karakter) VALUES ('" + mm.userID + "', '0');");

        //Max Als de gerbuiker nog niet bestaad worden de waardes van 0 aangemaakt voor de achievements
        msql.query("INSERT INTO Achievements(idUser, flawless,under5jumpslvl1, Flash, under15jumps) VALUES ('" + mm.userID +"', '0', '0', '0', '0')");

        //thijs jumpcount en deathcount
        msql.query("INSERT INTO PlayerData (idUser, jumpcount, deathcount) VALUES ('" + mm.userID + "', '0' , '0');");
      }

      //Kevin/Mika Score van de speler word gepakt
      msql.query("SELECT score FROM Highscore WHERE idUser = '" + userID + "' ORDER BY score DESC;");
      while (msql.next()) {
        t.HighScore = msql.getInt("score");
      }


      //thijs player data gets
      msql.query("SELECT jumpcount, deathcount FROM PlayerData WHERE idUser = '" + mm.userID + "';");

      while (msql.next()) {
        deathcounter = msql.getInt("deathcount");
        jumpcounter = msql.getInt("jumpcount");
      }


      //Mika SELECET hoogste score van alle scores
      msql.query("SELECT MAX(score) AS BesteScore FROM Highscore;");
      while (msql.next()) {
        BesteScore = msql.getInt("Bestescore");
      }
    } else if (!hl.hoveringOK) {
      switch(currentLetter) {

      case 1 : 
        if (clicking) {
          userletter1 = hl.hoveredLetter;
          currentLetter ++;
          clicking = false;
        }
        break;

      case 2 : 
        if (clicking) {
          userletter2 = hl.hoveredLetter;
          currentLetter ++;
          clicking = false;
        }
        break;

      case 3 : 
        if (clicking) {
          userletter3 = hl.hoveredLetter;
          currentLetter ++;
          clicking = false;
        }
        break;
      }
    }
  }

  void PlayMenu() {
    //tutorial
    image(Button, 300, 140);
    if (menuCursorX > 100 && menuCursorX < 500 && menuCursorY > 100 && menuCursorY < 170 && levelswitch == 0) {
      image(ButtonHighlight, 300, 140);
      if (clicking) {
        levelswitch = 1;
        spawnpoint.spawnPointSetup();
        t.Score = 0;
      }
    }

    //easy
    image(Button, 300, 240);
    if (menuCursorX > 100 && menuCursorX < 500 && menuCursorY > 200 && menuCursorY < 270 && levelswitch == 0) {
      image(ButtonHighlight, 300, 240);
      if (clicking) {
        menuState = 1; //CHANGE WHEN DIFFICULTY IMPLEMENTED
        levelswitch = 6;
        spawnpoint.spawnPointSetup();
      }
    }

    //back button
    image(Button, 300, 740);
    if (menuCursorX > 100 && menuCursorX < 500 && menuCursorY > 700 && menuCursorY < 770 && levelswitch == 0) {
      image(ButtonHighlight, 300, 740);
      if (clicking) {
        menuState = 0;
      }
    }
    
    fill(0);
    textSize(32);
    text("Back", 150, 750);

    textSize(32);
    fill(0);
    text("Tutorial", 150, 150);
    text("Easy", 150, 250);
  }

  void TitleMenu() {
    menuCursorSpeed = 12;

    //Hoogste score drawen
    fill(255);

    text("Highest Score:" + BesteScore, 300, 80);

    //play button
    fill(255);
    textSize(100);
    text(username, 1100, 80);
    image(Button, 300, 440);
    if (menuCursorX > 100 && menuCursorX < 500 && menuCursorY > 400 && menuCursorY < 470 && levelswitch == 0) {
      image(ButtonHighlight, 300, 440);
      if (clicking) {
        menuState = 1;

        //Het karakter wordt opgehaald uit de database en daarna gebonden aan de characterindex van de game
        msql.query("SELECT Karakter FROM Opties WHERE idUser = '" + userID + "';");

        while (msql.next()) 
        {
          p.characterindex = msql.getInt("Karakter");
        }
      }
    }
    
    //character change button
    image(Button, 300, 540);
    if (menuCursorX > 100 && menuCursorX < 500 && menuCursorY > 500 && menuCursorY < 570 && levelswitch == 0) {
      image(ButtonHighlight, 300, 540);
      if (clicking) {
        menuState = 2;
      }
    }
    
    //quit button
    image(Button, 300, 640);
    if (menuCursorX > 100 && menuCursorX < 500 && menuCursorY > 600 && menuCursorY < 670 && levelswitch == 0) {
      image(ButtonHighlight, 300, 640);
      if (clicking) {
        exit();
      }
    }
    



    //Achievement Button
   /* fill(255);
    if (menuCursorX > 800 && menuCursorX < 1200 && menuCursorY > 700 && menuCursorY < 770 && levelswitch == 0) {
      fill(255, 255, 0);
      if (clicking) {
        menuState = 5;
        clicking = false;
        background(0);
        //Het karakter wordt opgehaald uit de database en daarna gebonden aan de characterindex van de game
        msql.query("SELECT Karakter FROM Opties WHERE idUser = '" + userID + "';");

        while (msql.next()) 
        {
          p.characterindex = msql.getInt("Karakter");
        }
        Display = 0;
        //IEdereen waardes van spelers overzicht pakken met 2 inner joins 
        msql.query("SELECT u.name, o.Karakter, pd.jumpcount, pd.deathcount FROM User u INNER JOIN PlayerData pd on u.idUser = pd.idUser INNER JOIN Opties o on u.idUser = o.idUser WHERE u.idUser LIKE '" + mm.userID + "';");
      }
    }
    image(woodensign, 1000, 740);
*/
    //leaderboard
    image(Button, 1000, 640);
    if (menuCursorX > 800 && menuCursorX < 1200 && menuCursorY > 600 && menuCursorY < 670 && levelswitch == 0) {
      image(ButtonHighlight, 1000, 640);
      if (clicking) {
        menuState = 4;
        clicking = false;
        background(0);

        Yoffset = 0;
        //Mika scores en namen worden gepakt vanuit de user en highscore table   
        msql.query("SELECT Highscore.score, User.name FROM Highscore INNER JOIN User ON Highscore.idUser = User.idUser ORDER BY score DESC;");
        while (msql.next() && users < maxusers){
          naam[users] = msql.getString("name");
          score[users] = msql.getInt("score");
          users++;         
        }
      }
    }
    


    //Button and Menu Text
    textSize(32);
    fill(0);
    text("Play", 150, 450);
    text("Change Character", 150, 550);
    text("Quit", 150, 650);
   // text("Achievements", 850, 750);
    text("Leaderboard", 850, 650);

    text("Your highscore =" + t.HighScore, 810, 550);
  }

 /* void AchievementMenu() {

    
    while (msql.next()) {
      if (Display == 0) {
        String s1 = msql.getString("name");
        int s2 = msql.getInt("Karakter"); 

        if (s2 == 1) {
          geslacht = "Vrouw";
        } else {
          geslacht = "Man";
        }

        int s3 = msql.getInt("jumpcount"); 
        int s4 = msql.getInt("deathcount"); 
        println(s1 + s2);
        fill(255);
        text(s1, 100, 200);
        text(mm.geslacht, 300, 200);   
        text(s3, 750, 200);             
        text(s4, 1100, 200);           
        Display += 1;
        
     
      }
    }

    fill(255);
    if (menuCursorX > 100 && menuCursorX < 500 && menuCursorY > 700 && menuCursorY < 770 && levelswitch == 0) {
      fill(255, 255, 0);
      if (clicking) {
        menuState = 0;
      }
    }
    rect(100, 700, 400, 70);


    fill(255);
    text("Naam", 100, 100);
    text("Gekozen Karakter", 300, 100);
    text("Total jumps", 750, 100);
    text("Deaths", 1100, 100);

    fill(0);
    textSize(32);
    text("Back", 110, 750);
    rect(800, 600, 700, 700);
  } */


  void CharacterMenu() {
    background(40);
    imageMode(CORNER);
    image(character1frame, 100, 100, 200, 200);
    if (menuCursorX > 100 && menuCursorX < 300 && menuCursorY > 100 && menuCursorY < 300 && levelswitch == 0) {
      fill(255, 40);
      noStroke();
      ellipse(200+4, 200-5, 150, 150);
      if (clicking) {
        p.characterindex = 0;
        menuState = 0;

        //Olivier Characterindex 0 maken in de database
        msql.query("UPDATE Opties SET Karakter = '" + p.characterindex + "' WHERE idUser = '" + userID + "';");
      }
    }
    image(character2frame, 350, 100, 200, 200);
    if (menuCursorX > 350 && menuCursorX < 550 && menuCursorY > 100 && menuCursorY < 300 && levelswitch == 0) {
      fill(255, 40);
      noStroke();
      ellipse(450+4, 200-5, 150, 150);
      if (clicking) {
        p.characterindex = 1;
        menuState = 0;

        //Olivier Characterindex 1 maken
        msql.query("UPDATE Opties SET Karakter = '" + p.characterindex + "' WHERE idUser = '" + userID + "';");
      }
    }
  }


  void Leaderboard() {

    for (int i = 0; i<maxusers; i++){
      fill(255);
      text(naam[i], 100, 100 +Yoffset);
      text(score[i], 700, 100 +Yoffset);
      Yoffset += 60;            
    }
    
    Yoffset = 0;
    
    text("Naam:", 100, 40);
    text("Score:", 700, 40);

    image(Button, 300, 740);
    if (menuCursorX > 100 && menuCursorX < 500 && menuCursorY > 700 && menuCursorY < 770 && levelswitch == 0) {
      image(ButtonHighlight, 300, 740);
      if (clicking) {
        menuState = 0;
      }
    }
    
    fill(0);
    textSize(32);
    text("Back", 150, 750);
  }

  void menuCursor() {
    fill(255, 255, 0);
    imageMode(CORNER);
    image(cursor,menuCursorX, menuCursorY-20);

    if (menuCursorMovingUP) {
      menuCursorY -= menuCursorSpeed;
    } else if (menuCursorMovingDOWN) {
      menuCursorY += menuCursorSpeed;
    } 
    
    if (menuCursorMovingLEFT) {
      menuCursorX -= menuCursorSpeed;
    } else if (menuCursorMovingRIGHT) {
      menuCursorX += menuCursorSpeed;
    }
    
    if(menuCursorY > height - 20){
     menuCursorY = height - 20; 
    }
    
     if(menuCursorY < 0){
     menuCursorY = 0; 
    }
    
    if(menuCursorX > width - 20){
     menuCursorX = width - 20; 
    }
    
    if(menuCursorX < 0){
     menuCursorX = 0; 
    }
    
    imageMode(CENTER);
  }
}
