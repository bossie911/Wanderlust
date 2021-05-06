class Signpost {
  float xIconOffset;
  float xIconBobspeed = 0.5;
  boolean playerIsReadingSign;
  boolean playerInSignRange;
  boolean playerInSignRange2;
  boolean playerIsReadingSign2;

  void drawSign(float signPositionX, float signPositionY, String signText,int signTextSize) {
    imageMode(CENTER);
    image(sign, signPositionX, signPositionY, 100, 100);

    if (p.pcenterx > (signPositionX - 100) && p.pcenterx < (signPositionX + 100) && p.pcentery > (signPositionY - 100) && p.pcentery < (signPositionY + 100)) {
      playerInSignRange = true;
    } else {
      playerInSignRange = false;
    }

    if (playerInSignRange) {
      image(xIcon, signPositionX, signPositionY - 75 - xIconOffset);
      
      xIconOffset += xIconBobspeed;
      
      if(xIconOffset > 10){
       xIconOffset = 0; 
      }
      
      if (playerInteracting == true){
        playerIsReadingSign = true;
      }
      
      if (!playerInteracting){
        playerIsReadingSign = false;
      }

      if (playerIsReadingSign) {
        textSize(signTextSize);
        image(dialogueBox,650,150);
        text(signText, 390, 175);
        println("player is reading sign");
      }
    }

    if (!playerInSignRange) {
      playerIsReadingSign = false;
      playerInteracting = false;
    }
  }
  
   
    void drawSign2(float signPositionX2, float signPositionY2, String signText,int signTextSize) {
    imageMode(CENTER);
    image(sign, signPositionX2, signPositionY2, 100, 100);

    if (p.pcenterx > (signPositionX2 - 100) && p.pcenterx < (signPositionX2 + 100) && p.pcentery > (signPositionY2 - 100) && p.pcentery < (signPositionY2 + 100)) {
      playerInSignRange2 = true;
    } else {
      playerInSignRange2 = false;
    }

    if (playerInSignRange2) {
      image(xIcon, signPositionX2, signPositionY2 - 75 - xIconOffset);
      
      xIconOffset += xIconBobspeed;
      
      if(xIconOffset > 10){
       xIconOffset = 0; 
      }
      
      if (playerInteracting2 == true){
        playerIsReadingSign2 = true;
      }
      
      if (!playerInteracting2){
        playerIsReadingSign2 = false;
      }

      if (playerIsReadingSign2) {
        textSize(signTextSize);
        image(dialogueBox,650,150);
        text(signText, 390, 175);
        println("player is reading sign");
      }
    }

    if (!playerInSignRange2) {
      playerIsReadingSign2 = false;
      playerInteracting2 = false;
    }
  }
  
}
