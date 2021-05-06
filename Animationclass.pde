class Animation {

  int i = 1;
  int a = 0;
  PImage[] animationframe = new PImage[8];
  PImage[] animationframeleft = new PImage[8];
  PImage[] girlanimationframe = new PImage[8];
  PImage[] girlanimationframeleft = new PImage[8];


  void loadImages() {


    for (i=1; i<8; i++) {
      String filename = "Runcycle" + i + ".png";
      animationframe[i] = loadImage(filename);
    }

    for (i=1; i<8; i++) {
      String filename = "Runcycleleft" + i + ".png";
      animationframeleft[i] = loadImage(filename);
    }


    for (i=1; i<8; i++) {
      String filename = "GirlRuncycle" + i + ".png";
      girlanimationframe[i] = loadImage(filename);
    }

    for (i=1; i<8; i++) {
      String filename = "GirlRuncycleleft" + i + ".png";
      girlanimationframeleft[i] = loadImage(filename);
    }
  }

  void draw() {
    imageMode(CENTER);
    switch(p.characterindex) {
    case 0:
      if (p.moveRight && p.grounded) {
        a++;
        if (a > 3) {
          a=0;
          i++;
        }  
        if (i > 7) {
          i=1;
        }

        image(animationframe[i], p.x+18, p.y+7, p.spriteWidth, p.spriteHeight);
      }

      if (p.moveLeft && p.grounded) {
        a++;
        if (a > 3) {
          a=0;
          i++;
        }  
        if (i > 7) {
          i=1;
        }

        image(animationframeleft[i], p.x+18, p.y+7,  p.spriteWidth, p.spriteHeight);
      }


      break;

    case 1:

      if (p.moveRight && p.grounded) {
        a++;
        if (a > 3) {
          a=0;
          i++;
        }  
        if (i > 7) {
          i=1;
        }

        image(girlanimationframe[i], p.x+18, p.y+7,  p.spriteWidth, p.spriteHeight);
      }

      if (p.moveLeft && p.grounded) {
        a++;
        if (a > 3) {
          a=0;
          i++;
        }  
        if (i > 7) {
          i=1;
        }

        image(girlanimationframeleft[i], p.x+18, p.y+7, p.spriteWidth, p.spriteHeight);
      }
    }
    
    imageMode(CORNER);
  }
}
