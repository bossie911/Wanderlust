class Achievements{

  boolean under5jumps = false;
  float jumpcounterlvl = 0;
  int currentlevel;

  boolean flawless = false;
  int deathcounter = 0;

  boolean Flash = false;

  boolean under15jumps = false;


  void getunder5jumps(){
    currentlevel = levelswitch - 1;

    if(jumpcounterlvl<= 6 && currentlevel == 1 && roomgoal.touchingRoomend){
      under5jumps = true;

    }

    if(under5jumps == true){
    // println("under5jumps = true");

    }

  }
  void getflawless(){

    if(deathcounter == 0 && p.iswin==true){
      flawless = true;
    }
    if (flawless == true){
      println("flawless");
    }

  }

  void getFlash(){

    if(t.Finaltime <= 30 && p.iswin==true){
      Flash = true;
    }
    if (Flash == true){
      println("Flash");
    }
  }

   void getunder15jumps(){

     if(jumpcounterlvl <= 50 && p.iswin==true){
       under15jumps= true;
      println(" under15jumps= true");

 

 }
 }
}
