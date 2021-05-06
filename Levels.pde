class Level {

  void DrawLevel1() 
  {
    sign1.drawSign(90, 640, "Press A To Jump", 80);
    sign1.drawSign2(400, 250, "Collect Gems For Points", 50);

    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();

    roomgoal.DrawRoomwarp(width-64, 92, 64, 132);
    item.DrawItem(100, 200);

    //moveplat.DrawMovingobject(200 + moveplat.MoveX, 400, 200, 50, 2, 200, 600);

    //platform 1
    for (int SolidX = 0; SolidX < 332; SolidX += 32) 
    {
      for (int SolidY = 672; SolidY < height; SolidY += 32)
      {
        if (SolidY == 672)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }    
    o.DrawSystems(0, 672, 332, 128); 

    //platform 2
    for (int SolidX = 332; SolidX < 460; SolidX += 32) 
    {
      for (int SolidY = 544; SolidY < height; SolidY += 32)
      {
        if (SolidX == 332 && SolidY == 544)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidX == 428 && SolidY == 544)
        {
          o.DrawImage(SolidX, SolidY, 3);
        } else if (SolidY == 544)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else if (SolidX == 332 && SolidY <= 640)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else if (SolidX == 428)
        {
          o.DrawImage(SolidX, SolidY, 6);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(332, 544, 128, 600);

    //platform 3
    for (int SolidX = 332; SolidX < 460; SolidX += 32) 
    {
      if (SolidX == 332)
      {
        o.DrawImage(SolidX, 288, 21);
      } else if (SolidX == 428)
      {
        o.DrawImage(SolidX, 288, 20);
      } else
      {
        o.DrawImage(SolidX, 288, 22);
      }
    }
    o.DrawSystems(332, 288, 128, 32);

    //platform 4
    for (int SolidX = 608; SolidX < 704; SolidX += 32) 
    {
      for (int SolidY = 448; SolidY < height; SolidY += 32)
      {
        if (SolidX == 608 && SolidY == 448)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidX == 608)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else if (SolidY == 448)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(608, 448, 96, 500);

    //platfrom 5
    for (int SolidX = 704; SolidX < 832; SolidX += 32) 
    {
      for (int SolidY = 224; SolidY < height; SolidY += 32)
      {
        if (SolidX == 704 && SolidY == 224)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidX == 800 && SolidY == 224)
        {
          o.DrawImage(SolidX, SolidY, 3);
        } else if (SolidY == 224)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else if (SolidX == 800)
        {
          o.DrawImage(SolidX, SolidY, 6);
        } else if (SolidX == 704 && SolidY < 448)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(704, 223, 128, 800);

    //platfrom 6
    for (int SolidX = 992; SolidX < width; SolidX += 32) 
    {
      for (int SolidY = 224; SolidY < height; SolidY += 32)
      {
        if (SolidX == 992 && SolidY == 224)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidY == 224)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else if (SolidX == 992)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(992, 224, 400, 800);

    //wall 1
    for (int ObjectY = 0; ObjectY < 672; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    //wall 2
    for (int ObjectY = 0; ObjectY < 100; ObjectY += 32)
    {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, 128); //wall 2
  }

  // LEVEL 2 FUNCITON --------------------------------------------------------------------------------------------------------------------------------------------
  void DrawLevel2() 
  {

    sign1.drawSign(90, 670, "Touch Vines & press A To Walljump", 40);
    sign1.drawSign2(400, 220, "Press Down to slide down vines", 40);

    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();

    //wall 1
    for (int ObjectY = 0; ObjectY < height-127; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    //wall 2
    for (int ObjectY = 476; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 476, 32, 330);

    //platform 1
    for (int SolidX = 0; SolidX < 856; SolidX += 32) 
    {
      for (int SolidY = height-96; SolidY < height; SolidY += 32)
      {
        if (SolidX >= 824 && SolidY == height-96)
        {
          o.DrawImage(SolidX, SolidY, 3);
        } else if (SolidX >= 824)
        {
          o.DrawImage(SolidX, SolidY, 6);
        } else if (SolidY == height-96 && (SolidX <= 255 || SolidX >= 640))
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(0, height-96, 856, 96);

    //platform 2
    for (int SolidX = width-192; SolidX < width; SolidX += 32) 
    {
      for (int SolidY = height-96; SolidY < height; SolidY += 32)
      {
        if (SolidX == width-192 && SolidY == height-96)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidX == width-192)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else if (SolidY == height-96)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(width-192, height-95, 192, 96);

    //platform 3
    for (int SolidX = 256; SolidX < 640; SolidX += 32) 
    {
      for (int SolidY = 256; SolidY < height-96; SolidY += 32)
      {
        if (SolidX == 256 && SolidY == 256)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidX == 608 && SolidY == 256)
        {
          o.DrawImage(SolidX, SolidY, 3);
        } else if (SolidY == 256)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(256, 256, 380, 800);

    //platform 4
    for (int SolidX = 856; SolidX < width; SolidX += 32) 
    {
      for (int SolidY = 256; SolidY < 476; SolidY += 32)
      {
        if (SolidY == height-96 && (SolidX <= 255 || SolidX >= 640))
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else if (SolidY == 256 && SolidX <= width-160)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else if (SolidY >= 444)
        {
          o.DrawImage(SolidX, SolidY, 10);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(856, 255, 600, 250);

    //platform 5
    for (int SolidX = width-160; SolidX < width; SolidX += 32) 
    {
      for (int SolidY = 128; SolidY < 256; SolidY += 32)
      {
        if (SolidX == width-160 && SolidY == 128)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidY == 128)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else if (SolidX == width-160)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(width-160, 128, 160, 128);

    //left jump wall 1
    for (int SolidY = 0; SolidY < 532; SolidY += 32) 
    {
      if (SolidY >= 500)
      {
        j.WallVisual(24, SolidY, 4);
      } else
      {
        j.WallVisual(24, SolidY, 0);
      }
    }
    j.drawLWall(24, 0, 20, 532);

    //right jump wall 1
    for (int SolidY = 256; SolidY < 694; SolidY += 32) 
    {
      if (SolidY == 256)
      {
        j.WallVisual(248, SolidY, 1);
      } else
      {
        j.WallVisual(248, SolidY, 0);
      }
    }
    j.drawRWall(248, 256, 16, 800);

    //left jump wall 2
    for (int SolidY = 256; SolidY < 694; SolidY += 32) 
    {
      if (SolidY == 256)
      {
        j.WallVisual(632, SolidY, 3);
      } else
      {
        j.WallVisual(632, SolidY, 0);
      }
    }
    j.drawLWall(632, 256, 16, 700);

    //right jump wall 2
    for (int SolidY = 256; SolidY < 470; SolidY += 32) 
    {
      if (SolidY == 256)
      {
        j.WallVisual(848, SolidY, 1);
      } else if (SolidY >= 438)
      {
        j.WallVisual(848, SolidY, 2);
      } else
      {
        j.WallVisual(848, SolidY, 0);
      }
    }
    j.drawRWall(848, 256, 16, 228);

    //overige assets
    item.DrawItem(1200, 600);
    roomgoal.DrawRoomwarp(width-64, 0, 64, 128);
  }

  // LEVEL 3 FUNCTION --------------------------------------------------------------------------------------------------------------------------------------------

  void DrawLevel3() 
  { 

    sign1.drawSign(90, 660, "Press B/R To Grapple", 60);
    //grapple texture
    imageMode(CORNER);
    for (int ObjectY = 320; ObjectY < height-92; ObjectY += 64) {
      if (ObjectY == 320)
      {
        image(GrappleTop, 382, ObjectY);
      } else if (ObjectY >= height-160)
      {
        image(GrappleBottom, 382, ObjectY);
      } else
      {
        image(GrappleMid, 382, ObjectY);
      }
    }
    g.grapplepoint(388, 372);

    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();

    //wall 1
    for (int ObjectY = 0; ObjectY < 800; ObjectY += 32) {
      if (ObjectY == 320)
      {
        o.DrawImage(0, ObjectY, 22);
      } else
      {
        o.DrawImage(0, ObjectY, 20);
      }
    }
    o.DrawSystems(0, 0, 32, height);

    //wall 2
    for (int ObjectY = 0; ObjectY < 192; ObjectY += 32) {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, 192);

    //platform1
    for (int SolidX = 0; SolidX < 604; SolidX += 32) 
    {
      for (int SolidY = height-96; SolidY < height; SolidY += 32) 
      {
        if (SolidY == height-96)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(0, height-96, 604, 96);

    //platform 2
    o.DrawImage(32, 320, 20);
    o.DrawSystems(32, 321, 32, 50);

    //platform 3
    for (int SolidX = 604; SolidX < 1120; SolidX += 32) 
    {
      for (int SolidY = height-192; SolidY < height; SolidY += 32) 
      {
        if (SolidX == 604 && SolidY == height-192)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidX == 604 && SolidY <= height-128)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else if (SolidY == height-192)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(604, height-192, 1000, 192);

    //platform 4
    for (int SolidX = 800; SolidX < 898; SolidX += 32) {
      if (SolidX == 800)
      {
        o.DrawImage(SolidX, 352, 21);
      } else if (SolidX >= 870)
      {
        o.DrawImage(SolidX, 352, 20);
      } else
      {
        o.DrawImage(SolidX, 352, 22);
      }
    }
    o.DrawSystems(800, 352, 128, 54);

    //platform 5
    for (int SolidX = 1120; SolidX < width; SolidX += 32)
    {
      for (int SolidY = 320; SolidY < height; SolidY += 32)
      {
        if (SolidY == 320 && SolidX == 1120)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidY == 320)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else if (SolidX == 1120 && SolidY < 604)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(1120, 320, 200, 300);    

    item.DrawItem(32, 265);
    roomgoal.DrawRoomwarp(width-64, 192, 64, 128);
  }

  // LEVEL 4 FUNCTION -------------------------------------------------------------------------------------------------------------------------------------------
  void DrawLevel4()
  { 
    imageMode(CORNER);
    for (int ObjectY = 498; ObjectY < height; ObjectY += 64) {
      if (ObjectY == 498)
      {
        image(GrappleTop, 494, ObjectY);
      } else
      {
        image(GrappleMid, 494, ObjectY);
      }
    }
    g.grapplepoint(500, 550);

    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();
    roomgoal.DrawRoomwarp(width-64, 0, 64, 160);

    //platform 1
    for (int ObjectX = 0; ObjectX < 224; ObjectX += 32)
    {
      for (int ObjectY = height-160; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == 192 && ObjectY == height-160)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectY == height-160)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectX == 192)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(0, height-160, 224, 160);

    //platform 2
    for (int ObjectX = width-320; ObjectX < width; ObjectX += 32)
    {
      for (int ObjectY = 160; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == width-320 && ObjectY == 160)
        {
          o.DrawImage(ObjectX, ObjectY, 2);
        } else if (ObjectX == width-320)
        {
          o.DrawImage(ObjectX, ObjectY, 5);
        } else if (ObjectY == 160)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(width-320, 160, 320, 750);

    //platform 3
    for (int ObjectX = 668; ObjectX < 732; ObjectX += 32)
    {
      for (int ObjectY = 0; ObjectY < 412; ObjectY += 32)
      {
        if (ObjectX == 668 && ObjectY >= 380)
        {
          o.DrawImage(ObjectX, ObjectY, 12);
        } else if (ObjectX == 700 && ObjectY >= 380)
        {
          o.DrawImage(ObjectX, ObjectY, 11);
        } else if (ObjectX == 668)
        {
          o.DrawImage(ObjectX, ObjectY, 5);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        }
      }
    }
    o.DrawSystems(668, 0, 64, 412);

    //wall 1
    for (int ObjectY = 0; ObjectY < height-160; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    for (int SolidY = 160; SolidY < 860; SolidY += 32) 
    {
      if (SolidY == 160)
      {
        j.WallVisual(970, SolidY, 1);
      } else if (SolidY == 828)
      {
        j.WallVisual(970, SolidY, 2);
      } else
      {
        j.WallVisual(970, SolidY, 0);
      }
    }
    j.drawRWall(970, 160, 20, 700);

    for (int SolidY = 0; SolidY < 416; SolidY += 32) 
    {
      if (SolidY == 384)
      {
        j.WallVisual(727, SolidY, 4);
      } else
      {
        j.WallVisual(727, SolidY, 0);
      }
    }
    j.drawLWall(727, 0, 20, 416);

    item.DrawItem(width-370, height-50);

    sign1.drawSign2(200, 590, "Press A while grappled to jump", 40);
  }

  // LEVEL 5 FUNCTION --------------------------------------------------------------------------------------------------------------------------------------------

  void DrawLevel5()
  { 

    sign1.drawSign(920, 630, "Spikes hurt", 80);
    sign1.drawSign2(350, 220, "Collect Trophy to win", 50);

    imageMode(CORNER);
    for (int ObjectY = 444; ObjectY < height; ObjectY += 64) {
      if (ObjectY == 444)
      {
        image(GrappleTop, 592, ObjectY);
      } else
      {
        image(GrappleMid, 592, ObjectY);
      }
    }
    g.grapplepoint(600, 500);

    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();
    levelend.DrawLevelEnd(50, 132);
    item.DrawItem(900, 350);

    //spike 2
    for (int ObjectX = 384; ObjectX < 672; ObjectX += 32)
    {
      s.DrawSpike(ObjectX, 260, 0);
    }
    s.SpikeSystems(410, 265, 270, 30);

    //spike3
    s.SpikeSystems(width-60, 630, 50, 50);
    image(SpikeTopRight, width-65, 598);
    image(SpikeRight, width-65, 630);
    image(SpikeBottomRight, width-65, 662);

    //spike 4
    s.SpikeSystems(width-60, 230, 50, 50);
    image(SpikeTopRight, width-65, 198);
    image(SpikeRight, width-65, 230);
    image(SpikeBottomRight, width-65, 262);

    //spike 5
    s.SpikeSystems(width-320, 440, 32, 64);
    image(SpikeTopLeft, width-310, 408);
    image(SpikeLeft, width-310, 440);
    image(SpikeBottomLeft, width-310, 472);


    //platform 1
    for (int ObjectX = 0; ObjectX < 224; ObjectX += 32)
    {
      for (int ObjectY = height-160; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == 192 && ObjectY == height-160)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectX == 192)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else if (ObjectY == height -160)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(0, height-160, 224, 160);

    //platform 2
    for (int ObjectX = width-416; ObjectX < width; ObjectX += 32)
    {
      for (int ObjectY = height-128; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == width-416  && ObjectY == height -128)
        {
          o.DrawImage(ObjectX, ObjectY, 2);
        } else if (ObjectX == width-416)
        {
          o.DrawImage(ObjectX, ObjectY, 5);
        } else if (ObjectY == height-128)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(width-416, height-128, 384, 160);

    //platform 3
    for (int ObjectY = 228; ObjectY < 548; ObjectY += 32)
    {
      if (ObjectY == 228)
      {
        o.DrawImage(960, ObjectY, 4);
      } else if (ObjectY >= 320 && ObjectY < 516)
      {
        o.DrawImage(960, ObjectY, 8);
      } else if (ObjectY >= 516)
      {
        o.DrawImage(960, ObjectY, 9);
      } else
      {
        o.DrawImage(960, ObjectY, 6);
      }
    } 
    o.DrawSystems(960, 228, 32, 346);

    //platform 4
    for (int ObjectX = 224; ObjectX < 960; ObjectX += 32)
    {
      for (int ObjectY = 260; ObjectY < 324; ObjectY += 32)
      {
        if (ObjectX == 384 && ObjectY == 260)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectX == 640 && ObjectY == 260)
        {
          o.DrawImage(ObjectX, ObjectY, 2);
        } else if (ObjectX >= 416 && ObjectX <= 640 && ObjectY == 260)
        {
        } else if (ObjectX >= 416 && ObjectX <= 618 && ObjectY == 292)
        {
          o.DrawImage(ObjectX, ObjectY, 7);
        } else if (ObjectY == 292)
        {
          o.DrawImage(ObjectX, ObjectY, 10);
        } else if (ObjectY == 260)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(32, 259, 384, 32);
    o.DrawSystems(650, 260, 334, 32);
    o.DrawSystems(32, 291, 900, 54);

    //platform 5
    for (int ObjectX = 0; ObjectX < 224; ObjectX += 32)
    {
      for (int ObjectY = 164; ObjectY < 324; ObjectY += 32)
      {
        if (ObjectY == 164 && ObjectX == 192)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectX == 192 && ObjectY <= 228)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else if (ObjectY == 164)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectY == 292)
        {
          o.DrawImage(ObjectX, ObjectY, 10);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(32, 164, 192, 160);

    //wall 1
    for (int ObjectY = 0; ObjectY < height-160; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    //wall 2
    for (int ObjectY = 0; ObjectY < height-128; ObjectY += 32)
    {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, height); //wall 2

    for (int SolidY = 96; SolidY < 672; SolidY += 32) 
    {
      if (SolidY ==96)
      {
        j.WallVisual(width-40, SolidY, 1);
      } else
      {
        j.WallVisual(width-40, SolidY, 0);
      }
    }
    j.drawRWall(width-40, 96, 20, 582);

    for (int SolidY = 228; SolidY < 548; SolidY += 32) 
    {
      if (SolidY == 228)
      {
        j.WallVisual(980, SolidY, 3);
      } else if (SolidY == 516)
      {
        j.WallVisual(980, SolidY, 4);
      } else
      {
        j.WallVisual(980, SolidY, 0);
      }
    }
    j.drawLWall(980, 228, 20, 320);

    roomgoal.DrawRoomwarp(126700000, 100, 40, 100);
  }
  
  
  //------------------------------------------------------EASY LEVEL 1-------------------------------------------------------
  void DrawLevel6() 
  {
    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();
    item.DrawItem(700, 400);
    roomgoal.DrawRoomwarp(width-64, 0, 64, 224);
    
    //wall 1
    for (int ObjectY = 0; ObjectY < height-96; ObjectY += 32)
    {
      if(ObjectY == 384)
      {
        o.DrawImage(0, ObjectY, 22);
      }
      else
      {
        o.DrawImage(0, ObjectY, 20);
      }
    }
    o.DrawSystems(0, 0, 32, height);
    
    //wall 2
    for (int ObjectY = 224; ObjectY < height-96; ObjectY += 32)
    {
      if(ObjectY == 224)
      {
        o.DrawImage(width-32, ObjectY, 22);
      }
      else
      {
        o.DrawImage(width-32, ObjectY, 21);
      }
    }
    o.DrawSystems(width-32, 224, 32, height-224);
    
    //platform 1
    for (int ObjectX = 0; ObjectX < 224; ObjectX += 32)
    {
      for (int ObjectY = height-96; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == 192 && ObjectY == height-96)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectY == height-96)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectX == 192)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(0, height-96, 224, 92);
    
    //platform 2
    for (int ObjectX = 364; ObjectX < 524; ObjectX += 32) 
    {
      for (int ObjectY = 544;ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == 364 && ObjectY == 544)
        {
          o.DrawImage(ObjectX, ObjectY, 2);
        } else if (ObjectY == 544)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectX == 364)
        {
          o.DrawImage(ObjectX, ObjectY, 5);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(364, 544, 160, 600);
    
    //platform 3
    for (int ObjectX = 492; ObjectX < 556; ObjectX += 32)
    {
      for (int ObjectY = 160; ObjectY < height; ObjectY += 32)
      {
        if(ObjectX == 492)
        {
          o.DrawImage(ObjectX, ObjectY, 21);
        }
        else
        {
          o.DrawImage(ObjectX, ObjectY, 20);
        }
      }
    }
    o.DrawSystems(492, 160, 64, height);
    
    //left wall jump
    for (int SolidY = height-224; SolidY < height; SolidY += 32) 
    {
      if (SolidY == height-224)
      {
        j.WallVisual(548, SolidY, 3);
      } else
      {
        j.WallVisual(548, SolidY, 0);
      }
    }
    j.drawLWall(548, height-224, 20, 224);
    
    //platform 4
    for (int ObjectX = 32; ObjectX < 160; ObjectX += 32) 
    {
      if (ObjectX == 128)
      {
        o.DrawImage(ObjectX, 384, 20);
      } else
      {
        o.DrawImage(ObjectX, 384, 22);
      }
    }
    o.DrawSystems(32, 384, 128, 32);
    
    //platform 5
    for (int ObjectX = 352; ObjectX < 492; ObjectX += 32) 
    {
      if (ObjectX == 352)
      {
        o.DrawImage(ObjectX, 192, 21);
      } else
      {
        o.DrawImage(ObjectX, 192, 22);
      }
    }
    o.DrawSystems(352, 192, 128, 32); 
    
    //platform 6
    for (int ObjectX = width-448; ObjectX < width; ObjectX += 32)
    {
      for (int ObjectY = height-128; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == width-448 && ObjectY == height-128)
        {
          o.DrawImage(ObjectX, ObjectY, 2);
        } else if (ObjectX == width-448)
        {
          o.DrawImage(ObjectX, ObjectY, 5);
        } else if (ObjectY == height-128 && ObjectX < width-160)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(width-448, height-128, 448, 128);
    
    //platform 7
    for (int ObjectX = width-448; ObjectX < width-384; ObjectX += 32)
    {
      for (int ObjectY = 0; ObjectY < height-320; ObjectY += 32)
      {
        if(ObjectX == width-448)
        {
          o.DrawImage(ObjectX, ObjectY, 21);
        }
        else if(ObjectX == width-416 && ObjectY == 384)
        {
          o.DrawImage(ObjectX, ObjectY, 22);
        }
        else
        {
          o.DrawImage(ObjectX, ObjectY, 20);
        }
      }
    }
    o.DrawSystems(width-448, 0, 64, 480);
    
    //right wall jump
    for (int SolidY = 0; SolidY < height-320; SolidY += 32) 
    {
      if (SolidY == height-352)
      {
        j.WallVisual(width-456, SolidY, 2);
      } else
      {
        j.WallVisual(width-456, SolidY, 0);
      }
    }
    j.drawRWall(width-456, 0, 20, 448);
    
    //platform 8
    for (int ObjectX = width-160; ObjectX < width; ObjectX += 32)
    {
      for (int ObjectY = height-256; ObjectY < height-128; ObjectY += 32)
      {
        if (ObjectX == width-160 && ObjectY == height-256)
        {
          o.DrawImage(ObjectX, ObjectY, 2);
        } else if (ObjectX == width-160)
        {
          o.DrawImage(ObjectX, ObjectY, 5);
        } else if (ObjectY == height-256)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(width-160, height-255, 160, 96);
    
    //platform 9
    for (int ObjectX = width-384; ObjectX < width-256; ObjectX += 32) 
    {
      if (ObjectX == width-288)
      {
        o.DrawImage(ObjectX, 384, 20);
      } else
      {
        o.DrawImage(ObjectX, 384, 22);
      }
    }
    o.DrawSystems(width-384, 385, 128, 32);
    
    //platform 10
    for (int ObjectX = width-160; ObjectX < width-32; ObjectX += 32) 
    {
      if (ObjectX == width-160)
      {
        o.DrawImage(ObjectX, 224, 21);
      } else
      {
        o.DrawImage(ObjectX, 224, 22);
      }
    }
    o.DrawSystems(width-160, 225, 128, 32); 
  }
 
  //----------------------------------------------EASY LEVEL 2----------------------------------------------------------------
  
   void DrawLevel7() {
    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();
    item.DrawItem(1100, 550);
    roomgoal.DrawRoomwarp(1250, 10, 40, 100);

    //Platform 1
    for (int SolidX = 332; SolidX < 460; SolidX += 32) 
    {
      if (SolidX == 332)
      {
        o.DrawImage(SolidX, 676, 21);
      } else if (SolidX == 428)
      {
        o.DrawImage(SolidX, 676, 20);
      } else
      {
        o.DrawImage(SolidX, 676, 22);
      }
    }
    o.DrawSystems(332, 676, 128, 32);

    //Platform 2
    for (int SolidX = 532; SolidX < 660; SolidX += 32) 
    {
      if (SolidX == 532)
      {
        o.DrawImage(SolidX, 506, 21);
      } else if (SolidX == 628)
      {
        o.DrawImage(SolidX, 506, 20);
      } else
      {
        o.DrawImage(SolidX, 506, 22);
      }
    }
    o.DrawSystems(532, 506, 128, 32);

    //Platform 3
    for (int SolidX = 0; SolidX < 672; SolidX += 32) 
    {
      if (SolidX == 640)
      {
        o.DrawImage(SolidX, 304, 20);
      } else
      {
        o.DrawImage(SolidX, 304, 22);
      }
    }
    o.DrawSystems(0, 304, 672, 32);

    //Platform 4
    for (int SolidX = 96; SolidX < 904; SolidX += 32) 
    {
      if (SolidX == 96)
      {
        o.DrawImage(SolidX, 106, 21);
      } else if (SolidX == 748)
      {
        o.DrawImage(SolidX, 106, 20);
      } else
      {
        o.DrawImage(SolidX, 106, 22);
      }
    }
    o.DrawSystems(96, 106, 840, 32);

    //Platform 6
    for (int SolidX = 938; SolidX < 1002; SolidX += 32) 
    {
      if (SolidX == 970) {

        o.DrawImage(SolidX, 234, 20);
      } else {
        o.DrawImage(SolidX, 234, 22);
      }
    }

    o.DrawSystems(940, 234, 60, 32);

    //Platform 7
    for (int SolidX = 939; SolidX < 1003; SolidX += 32) 
    {
      if (SolidX == 971) {

        o.DrawImage(SolidX, 506, 20);
      } else {
        o.DrawImage(SolidX, 506, 22);
      }
    }
    o.DrawSystems(940, 505, 60, 32);

    //Platform 8
    for (int SolidX = 1208; SolidX < 1304; SolidX += 32) 
    {
      if (SolidX == 1208) {
        o.DrawImage(SolidX, 376, 21);
      } else {
        o.DrawImage(SolidX, 376, 22);
      }
    }
    o.DrawSystems(1208, 376, 60, 32);

    //spike 1
    for (int ObjectX = 914; ObjectX < 1372; ObjectX += 32)
    {
      s.DrawSpike(ObjectX, 736, 0);
    }
    s.SpikeSystems(910, 736, 470, 30);

    //RightWallJump
    for (int ObjectY = 106; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(width-392, ObjectY, 20);
    }
    o.DrawSystems(width-392, 107, 32, height); //wall 2

    for (int SolidY = 136; SolidY < height; SolidY += 32) 
    {
      if (SolidY ==136)
      {
        j.WallVisual(width-400, SolidY, 0);
      } else
      {
        j.WallVisual(width-400, SolidY, 0);
      }
    }
    j.drawRWall(width-400, 112, 20, 582);

    //moving platform
    //Platform 6
    for (float SolidX = 1000 + moveplat.MoveX; SolidX < 1096 + moveplat.MoveX; SolidX += 32) 
    {
      if (SolidX == 1000 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 600, 21);
      }
      else if (SolidX == 1064 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 600, 20);
      }
      else
      {
        o.DrawImage(SolidX, 600, 22);
      }
    }
    moveplat.DrawMovingobject(1000 + moveplat.MoveX, 600, 100, 32, 2, 1000, 1200);
    

    //Left Barrier
    //wall 1
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    //Right Barrier
    //wall 1
    for (int ObjectY = 120; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(1280, ObjectY, 21);
    }
    o.DrawSystems(1280, 0, 32, height);

    //Platform 5
    for (int SolidX = 1084; SolidX < width; SolidX += 32) 
    {
      if (SolidX == 1084)
      {
        o.DrawImage(SolidX, 110, 21);
      } else if (SolidX == 1000)
      {
        o.DrawImage(SolidX, 110, 20);
      } else
      {
        o.DrawImage(SolidX, 110, 22);
      }
    }
    o.DrawSystems(1084, 110, 400, 32);

    //Floor
    for (int ObjectX = 0; ObjectX < 1300; ObjectX += 32)
    {
      for (int ObjectY = 768; ObjectY < 1024; ObjectY += 32)
      {
        o.DrawImage(ObjectX, ObjectY, 1);
      }
      o.DrawSystems(0, 768, 1300, 160);
    }
  }
  
  // -------------------------------------------------------------------- EASY LEVEL 3 --------------------------------------------------------------
  
   void DrawLevel8() {

    imageMode(CORNER);
    for (int ObjectY = 260; ObjectY < height; ObjectY += 64) {
      if (ObjectY == 260)
      {
        image(GrappleTop, 345, ObjectY);
      } else
      {
        image(GrappleMid, 345, ObjectY);
      }
    }
    g.grapplepoint(350, 300);

    roomgoal.DrawRoomwarp(1240, 30, 40, 100);

    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();

    //spike 4
    s.SpikeSystems(672, 334, 50, 50);
    image(SpikeTopRight, 672, 308);
    image(SpikeRight, 672, 340);
    image(SpikeBottomRight, 672, 372);

    s.SpikeSystems(500, 580, 75, 50);
    image(SpikeTopRight, 500, 548);
    image(SpikeRight, 500, 580);
    image(SpikeBottomRight, 500, 612);


    image(SpikeTopLeft, 530, 548);
    image(SpikeLeft, 530, 580);
    image(SpikeBottomLeft, 530, 612);

    s.SpikeSystems(700, 580, 75, 50);
    image(SpikeTopRight, 700, 548);
    image(SpikeRight, 700, 580);
    image(SpikeBottomRight, 700, 612);


    image(SpikeTopLeft, 730, 548);
    image(SpikeLeft, 730, 580);
    image(SpikeBottomLeft, 730, 612);


    //moving platform
    for (float SolidX = 550 + moveplat.MoveX; SolidX < 774 + moveplat.MoveX; SolidX += 32) 
    {
      if (SolidX == 550 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 700, 21);
      }
      else if (SolidX == 742 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 700, 20);
      }
      else
      {
        o.DrawImage(SolidX, 700, 22);
      }
    }
    moveplat.DrawMovingobject(550 + moveplat.MoveX, 700, 224, 32, 3, 550, 900);

    //Platform 1
    for (int SolidX = 132; SolidX < 260; SolidX += 32) 
    {
      if (SolidX == 132)
      {
        o.DrawImage(SolidX, 620, 21);
      } else if (SolidX == 228)
      {
        o.DrawImage(SolidX, 620, 20);
      } else
      {
        o.DrawImage(SolidX, 620, 22);
      }
    }
    o.DrawSystems(132, 620, 128, 32);

    //Left Barrier
    //wall 1
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);



    //Platform 5
    for (int SolidX = 1084; SolidX < width; SolidX += 32) 
    {
      if (SolidX == 1084)
      {
        o.DrawImage(SolidX, 130, 21);
      } else if (SolidX == 1000)
      {
        o.DrawImage(SolidX, 130, 20);
      } else
      {
        o.DrawImage(SolidX, 130, 22);
      }
    }
    o.DrawSystems(1084, 130, 400, 32);

    //GEM
    item.DrawItem(300, 100);


    //Floor
    for (int ObjectX = 0; ObjectX < 320; ObjectX += 32)
    {
      for (int ObjectY = 768; ObjectY < 1024; ObjectY += 32)
      {
        if (ObjectX == 320 - 32) {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else {
          o.DrawImage(ObjectX, ObjectY, 1);
        }
      }
    }
    o.DrawSystems(0, 768, 320, 160);



    //wall 1
    for (int ObjectY = 0; ObjectY <416; ObjectY += 32)
    {
      o.DrawImage(700, ObjectY, 21);
    }
    o.DrawSystems(700, 0, 32, 416);

    //wall 1
    for (int ObjectY = 650; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(500, ObjectY, 21);
    }
    o.DrawSystems(500, 650, 32, 416);

    for (int ObjectY = 650; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(532, ObjectY, 20);
    }
    o.DrawSystems(532, 650, 32, 416);

    //platform 2
    for (int ObjectX = width-320; ObjectX < width; ObjectX += 32)
    {
      for (int ObjectY = 160; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == width-320 && ObjectY == 160)
        {
          o.DrawImage(ObjectX, ObjectY, 2);
        } else if (ObjectX == width-320)
        {
          o.DrawImage(ObjectX, ObjectY, 5);
        } else if (ObjectY == 160)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(width-320, 160, 320, 750);   



    //Left Walljump 1
    for (int SolidY = 0; SolidY < 416; SolidY += 32) 
    {
      if (SolidY == 384)
      {
        j.WallVisual(727, SolidY, 4);
      } else
      {
        j.WallVisual(727, SolidY, 0);
      }
    }
    j.drawLWall(727, 0, 20, 416);

    //Right Walljump 1 
    for (int SolidY = 160; SolidY < 860; SolidY += 32) 
    {
      if (SolidY == 160)
      {
        j.WallVisual(970, SolidY, 1);
      } else if (SolidY == 828)
      {
        j.WallVisual(970, SolidY, 2);
      } else
      {
        j.WallVisual(970, SolidY, 0);
      }
    }
    j.drawRWall(970, 160, 20, 700);

    //Right Walljump 2 
    for (int SolidY = 0; SolidY < 320; SolidY += 32) 
    {
      if (SolidY == 0)
      {
        j.WallVisual(690, SolidY, 1);
      } else if (SolidY == 288)
      {
        j.WallVisual(690, SolidY, 2);
      } else
      {
        j.WallVisual(690, SolidY, 0);
      }
    }
    j.drawRWall(690, 0, 20, 320);
  }
  
  // -------------------------------------------------------------- EASY LEVEL 4 -------------------------------------------------------------------------------
  
  void DrawLevel9() 
  {
    p.display();
    p.behavior();
    p.control();     
    playeranimation.draw();
    roomgoal.DrawRoomwarp(width-64, 0, 64, 168);

    //wall 1
    for (int ObjectY = 0; ObjectY < 1300; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    //wall 2
    for (int ObjectY = 168; ObjectY < 1000; ObjectY += 32)
    {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, height); //wall 2
    
    //floor
    for (int ObjectX = 0; ObjectX < 128; ObjectX += 32)
    {
        if (ObjectX == 96)
        {
          o.DrawImage(ObjectX, height-32, 3);
        } else
        {
          o.DrawImage(ObjectX, height-32, 1);
        }
    }
    o.DrawSystems(0, height-32, 128, 32);


    //platform1
    for (int SolidX = 332; SolidX < 398; SolidX += 32) 
    {
      if (SolidX == 332)
      {
        o.DrawImage(SolidX, 769, 21);
      } else if (SolidX == 396)
      {
        o.DrawImage(SolidX, 769, 20);
      } else
      {
        o.DrawImage(SolidX, 769, 22);
      }
    }
    o.DrawSystems(332, 769, 92, 32);

    //platform2
    for (int SolidX = 732; SolidX < 798; SolidX += 32) 
    {
      if (SolidX == 732)
      {
        o.DrawImage(SolidX, 770, 21);
      } else if (SolidX == 796)
      {
        o.DrawImage(SolidX, 770, 20);
      } else
      {
        o.DrawImage(SolidX, 770, 22);
      }
    }
    o.DrawSystems(732, 770, 92, 32);
    
    //platform3
    for (int SolidX = width-192; SolidX < width; SolidX += 32) 
    {
      for (int SolidY = height-128; SolidY < height; SolidY += 32)
      {
        if (SolidX == width-192 && SolidY == height-128)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidX == width-192)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else if (SolidY == height-128)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(width-192, height-128, 192, 96);


    //platform4
    for (int SolidX = 916; SolidX < 982; SolidX += 32) 
    {
      if (SolidX == 916)
      {
        o.DrawImage(SolidX, 470, 21);
      } else if (SolidX == 980)
      {
        o.DrawImage(SolidX, 470, 20);
      } else
      {
        o.DrawImage(SolidX, 470, 22);
      }
    }
    o.DrawSystems(916, 470, 92, 32);

    //platform5

    for (int SolidX = 516; SolidX < 582; SolidX += 32) 
    {
      if (SolidX == 516)
      {
        o.DrawImage(SolidX, 471, 21);
      }
      else if(SolidX == 580)
      {
        o.DrawImage(SolidX, 471, 20);
      }
      else
      {
        o.DrawImage(SolidX, 471, 22);
      }
    }
    o.DrawSystems(516, 471, 92, 32);

    //platform6
    for (int SolidX = 0; SolidX < 223; SolidX += 32) 
    {
      if (SolidX == 192)
      {
        o.DrawImage(SolidX, 368, 20);
      } else if (SolidX == 428)
      {
        o.DrawImage(SolidX, 368, 20);
      } else
      {
        o.DrawImage(SolidX, 368, 22);
      }
    }
    o.DrawSystems(32, 368, 190, 32);
    
    //platform7
    for (int SolidX = 332; SolidX < width; SolidX += 32) 
    {
      if (SolidX == 332)
      {
        o.DrawImage(SolidX, 168, 21);
      }
      else
      {
        o.DrawImage(SolidX, 168, 22);
      }
    }
    o.DrawSystems(332, 169, 934, 32);

  }
  
  // ------------------------------------------------------------------------- EASY LEVEL 5 ---------------------------------------------------
  
  void DrawLevel10() 
  {
    //grapple texture
    imageMode(CORNER);
    for (int ObjectY = 320; ObjectY < height; ObjectY += 64) {
      if (ObjectY == 320)
      {
        image(GrappleTop, 710, ObjectY + 20);
      }  else
      {
        image(GrappleMid, 710, ObjectY + 20);
      }
    }
    g.grapplepoint(720, 390);
    
    p.display();
    p.behavior();
    p.control();
    playeranimation.draw(); 
    roomgoal.DrawRoomwarp(width-64, 0, 64, 200);
    
    //wall 1
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);
    
    //wall 3
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(width-32, 200 + ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, height);
    
    //platform 1
    for (int ObjectX = 0; ObjectX < 288; ObjectX += 32) 
    {
      o.DrawImage(ObjectX, 750, 1);
      o.DrawImage(ObjectX, 782, 0);
    }    
    o.DrawImage(288, 750, 3);
    o.DrawImage(288, 782, 6);
    o.DrawSystems(0, 750, 320, 32); 

    //platform 2
      o.DrawImage(500, 750, 2);
      o.DrawImage(500, 782, 5);
      o.DrawImage(532, 750, 3);
      o.DrawImage(532, 782, 6);
        
      o.DrawSystems(500, 751, 64, 32); 
    
    //platform 3

      o.DrawImage(800, 752, 2);
      o.DrawImage(800, 784, 5);
      o.DrawImage(832, 752, 3);
      o.DrawImage(832, 784, 6);
        
      o.DrawSystems(800, 752, 64, 32); 
    
    
    //platform 4
    for (int ObjectX = 0; ObjectX < 160; ObjectX += 32) 
    {
      o.DrawImage(1110 + ObjectX, 584, 22);
    }    
    o.DrawImage(1078, 584, 21);
    o.DrawSystems(1078, 584, 160, 32); 
    
    
    //platform 5
    for (int ObjectX = 0; ObjectX < 288; ObjectX += 32) 
    {
      o.DrawImage(0 + ObjectX, 352, 22);
    }    
    o.DrawImage(288, 352, 20);
    o.DrawSystems(0, 352, 320, 32);
    
    //platform 6
    o.DrawImage(500, 200, 21);
    o.DrawImage(532, 200, 22);
    o.DrawImage(564, 200, 20);   
    o.DrawSystems(500, 200, 96, 32); 
    
    //platform 7
    o.DrawImage(850, 200, 21);
    o.DrawImage(882, 200, 22);
    o.DrawImage(914, 200, 20);
    o.DrawSystems(850, 201, 96, 32); 
    
    //platform 8
    for (int ObjectX = 1110; ObjectX < width; ObjectX += 32) 
    {
      if(ObjectX == 1110)
      {
        o.DrawImage(ObjectX, 200, 21);
      }
      else
      {
        o.DrawImage(ObjectX, 200, 22);
      }
    }    
    o.DrawSystems(1110, 202, 192, 32);
  }
  
  // ------------------------------------------------------------------ EASY LEVEL 6 --------------------------------------------------------------------------
  
  void DrawLevel11() 
  {
    imageMode(CORNER);
    for (int ObjectY = 176; ObjectY < height; ObjectY += 64) {
      if (ObjectY == 176)
      {
        image(GrappleTop, 838, ObjectY);
      } else
      {
        image(GrappleMid, 838, ObjectY);
      }
    }
    g.grapplepoint(844, 224);
    
    p.display();
    p.behavior();
    p.control();
    playeranimation.draw(); 
    roomgoal.DrawRoomwarp(width-64, 0, 64, 224);
    
    //wall 1
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);
    
    //platform 1
    for (int ObjectX = 0; ObjectX < 224; ObjectX += 32)
    {
      for (int ObjectY = height-96; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == 192 && ObjectY == height-96)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectY == height-96)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectX == 192)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(0, height-96, 224, 92);
    
    //platform 2
    for(int ObjectX = 0; ObjectX < 160; ObjectX += 32)
    {
      for(int ObjectY = 0; ObjectY < height-256; ObjectY += 24)
      {
        if(ObjectX == 128 && ObjectY >= height - 288)
        {
          o.DrawImage(ObjectX, ObjectY, 11);
        }
        else if(ObjectX == 128)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        }
        else if(ObjectY >= height - 288)
        {
          o.DrawImage(ObjectX, ObjectY, 10);
        }
        else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(0, 0, 160, 580);
    
    for (int SolidY = 0; SolidY < height-256; SolidY += 32) 
    {
      if (SolidY >= height-288)
      {
        j.WallVisual(152, SolidY, 2);
      } else
      {
        j.WallVisual(152, SolidY, 0);
      }
    }
    j.drawLWall(152, 0, 20, height-256);
    
    //platform 3
    for (int ObjectX = 492; ObjectX < 556; ObjectX += 32)
    {
      for (int ObjectY = 160; ObjectY < height; ObjectY += 32)
      {
        if(ObjectX == 492)
        {
          o.DrawImage(ObjectX, ObjectY, 21);
        }
        else
        {
          o.DrawImage(ObjectX, ObjectY, 20);
        }
      }
    }
    o.DrawSystems(492, 160, 64, height);
    
    //left wall jump
    for (int SolidY = 160; SolidY < height; SolidY += 32) 
    {
      if (SolidY == 160)
      {
        j.WallVisual(484, SolidY, 1);
      } else
      {
        j.WallVisual(484, SolidY, 0);
      }
    }
    j.drawRWall(484, 160, 20, height-160);
    
    //platfrom 4
    for (int SolidX = width-192; SolidX < width; SolidX += 32) 
    {
      for (int SolidY = 224; SolidY < height; SolidY += 32)
      {
        if (SolidX == width-192 && SolidY == 224)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidY == 224)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else if (SolidX == width-192)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(width-192, 224, 192, height-224);
  }
  
  // ------------------------------------------------------------------ EASY LEVEL 7 --------------------------------------------------------------------------
  
  void DrawLevel12() 
  {
    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();
    roomgoal.DrawRoomwarp(1240, 61, 40, 100);
    
    //wall 1
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    //Platform 1
    for (int SolidX = 432; SolidX < 560; SolidX += 32) 
    {
      if (SolidX == 432)
      {
        o.DrawImage(SolidX, 526, 21);
      } else if (SolidX == 528)
      {
        o.DrawImage(SolidX, 526, 20);
      } else
      {
        o.DrawImage(SolidX, 526, 22);
      }
    }
    o.DrawSystems(432, 526, 128, 32);


    for (int SolidX = 432; SolidX < 680; SolidX += 32) 
    {
      if (SolidX == 432)
      {
        o.DrawImage(SolidX, 336, 21);
      } else if (SolidX == 656)
      {
        o.DrawImage(SolidX, 336, 20);
      } else
      {
        o.DrawImage(SolidX, 336, 22);
      }
    }
    o.DrawSystems(432, 336, 268, 32);


    //GEM
    item.DrawItem(500, 400);

    for (float SolidX = 1000 + moveplat.MoveX; SolidX < 1096 + moveplat.MoveX; SolidX += 32) 
    {
      if (SolidX == 1000 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 700, 21);
      } else if (SolidX == 1064 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 700, 20);
      } else
      {
        o.DrawImage(SolidX, 700, 22);
      }
    }
    moveplat.DrawMovingobject(1000 + moveplat.MoveX, 700, 100, 32, 2, 280, 1000);


    s.SpikeSystems(400, 330, 75, 50);
    image(SpikeTopRight, 400, 298);
    image(SpikeRight, 400, 330);
    image(SpikeBottomRight, 400, 362);


    image(SpikeTopLeft, 430, 298);
    image(SpikeLeft, 430, 330);
    image(SpikeBottomLeft, 430, 362);

    s.SpikeSystems(400, 530, 75, 50);
    image(SpikeTopRight, 400, 498);
    image(SpikeRight, 400, 530);
    image(SpikeBottomRight, 400, 562);


    image(SpikeTopLeft, 430, 498);
    image(SpikeLeft, 430, 530);
    image(SpikeBottomLeft, 430, 562);

    //spike 2
    for (int ObjectX = 200; ObjectX < width; ObjectX += 32)
    {
      s.DrawSpike(ObjectX, 736, 0);
    }
    s.SpikeSystems(200, 741, width, 30);

    //wall 1
    for (int ObjectY = 0; ObjectY <416; ObjectY += 32)
    {
      o.DrawImage(670, ObjectY, 21);
    }
    o.DrawSystems(670, 0, 62, 416);

    for (int ObjectY = 0; ObjectY <416; ObjectY += 32)
    {
      o.DrawImage(700, ObjectY, 20);
    }


    //wall 1
    for (int ObjectY = 650; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(200, ObjectY, 21);
    }
    o.DrawSystems(200, 650, 32, 416);

    for (int ObjectY = 650; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(220, ObjectY, 20);
    }
    o.DrawSystems(220, 651, 32, 416);


    //wall 1
    for (int ObjectY = 446; ObjectY < 550; ObjectY += 32)
    {
      o.DrawImage(558, ObjectY, 21);
    }
    o.DrawSystems(558, 450, 54, 416);

    for (int ObjectY = 446; ObjectY < 550; ObjectY += 32)
    {
      o.DrawImage(578, ObjectY, 20);
    }

    //platform 2
    for (int ObjectX = width-240; ObjectX < width; ObjectX += 32)
    {
      for (int ObjectY = 160; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == width-240 && ObjectY == 160)
        {
          o.DrawImage(ObjectX, ObjectY, 2);
        } else if (ObjectX == width-240)
        {
          o.DrawImage(ObjectX, ObjectY, 5);
        } else if (ObjectY == 160)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(width-240, 160, 320, 750);   

    //Left Walljump 1
    for (int SolidY = 0; SolidY < 416; SolidY += 32) 
    {
      if (SolidY == 384)
      {
        j.WallVisual(727, SolidY, 4);
      } else
      {
        j.WallVisual(727, SolidY, 0);
      }
    }
    j.drawLWall(727, 0, 20, 416);

    //Right Walljump 1 
    for (int SolidY = 160; SolidY < 860; SolidY += 32) 
    {
      if (SolidY == 160)
      {
        j.WallVisual(width-245, SolidY, 1);
      } else if (SolidY == 828)
      {
        j.WallVisual(width-245, SolidY, 2);
      } else
      {
        j.WallVisual(width-245, SolidY, 0);
      }
    }
    j.drawRWall(width-245, 160, 20, 700);

    //Floor
    for (int ObjectX = 0; ObjectX < width; ObjectX += 32)
    {
      for (int ObjectY = 768; ObjectY < 1024; ObjectY += 32)
      {
        if (ObjectX > width - 250) {
          o.DrawImage(ObjectX, ObjectY, 0);
        } else {
          o.DrawImage(ObjectX, ObjectY, 1);
        }
      }
    }
    o.DrawSystems(0, 768, width, 160);
  }
  
  // ------------------------------------------------------------------ EASY LEVEL 8 --------------------------------------------------------------------------
  
  void DrawLevel13()
  {
    //grapple texture
    imageMode(CORNER);
    for (int ObjectY = 320; ObjectY < height + 192; ObjectY += 64) {
      if (ObjectY == 320)
      {
        image(GrappleTop, 840, ObjectY - 175);
      }  else
      {
        image(GrappleMid, 840, ObjectY - 175);
      }
    }
    g.grapplepoint(850, 200);
    roomgoal.DrawRoomwarp(width-64, 0, 64, 202);
    
    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();
    
    //wall 1
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);
    
    //wall 2
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(width-32, 202 + ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, height);
    
    //platform 1
    for (int ObjectX = 0; ObjectX < 480; ObjectX += 32) 
    {
      o.DrawImage(ObjectX, 750, 1);
      o.DrawImage(ObjectX, 782, 0);
    }    
    o.DrawImage(480, 750, 3);
    o.DrawImage(480, 782, 6);
    o.DrawSystems(0, 750, 480, 32); 
    
    //spike 1
    s.SpikeSystems(30, 400, 32, 64);
    image(SpikeTopLeft, 30, 368);
    image(SpikeLeft, 30, 400);
    image(SpikeBottomLeft, 30, 432);
    
    //platform 2
    o.DrawImage(350, 580, 21);
    o.DrawImage(350 + 32, 580, 20);
    o.DrawSystems(350, 580, 64, 32); 
    
    
    //platform 3
    o.DrawImage(0, 448, 22);
    o.DrawImage(32, 448, 22);
    o.DrawImage(64, 448, 20);
    o.DrawSystems(0, 448, 96, 32); 
       
    //platform 3
    o.DrawImage(150, 250, 21);
    o.DrawImage(150 + 32, 250, 20);
    o.DrawSystems(150, 250, 64, 32);
       
    //platform 4
    o.DrawImage(450, 300, 21);
    o.DrawImage(450 + 32, 300, 20);
    o.DrawSystems(450, 300, 64, 32); 
       
    
    //platform 5
    for (int ObjectX = width-96; ObjectX < width; ObjectX += 32) 
    {
      if(ObjectX == width-96)
      {
        o.DrawImage(ObjectX, 202, 21);
      }
      else
      {
        o.DrawImage(ObjectX, 202, 22);
      }
    }    
    o.DrawSystems(1206, 202, 192, 32); 
  }
  
  // ------------------------------------------------------------------ EASY LEVEL 9 --------------------------------------------------------------------------
  
  void DrawLevel14() 
  {
    imageMode(CORNER);
    for (int ObjectY = 498; ObjectY < height; ObjectY += 64) {
      if (ObjectY == 498)
      {
        image(GrappleTop, 694, ObjectY);
      }  else
      {
        image(GrappleMid, 694, ObjectY);
      }
    }
    g.grapplepoint(700, 542);
    
    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();
    roomgoal.DrawRoomwarp(width-64, 0, 64, 128);
    
    //wall 1
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);
    
    //wall 2
    for (int ObjectY = 128; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 128, 32, height-128);
    
    //platform 1
    for (int ObjectX = 0; ObjectX < 224; ObjectX += 32)
    {
      for (int ObjectY = height-160; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == 192 && ObjectY == height-160)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectX == 192)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else if (ObjectY == height -160)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(0, height-160, 224, 160);
    
    //platform 2
    for (int SolidX = width-192; SolidX < width; SolidX += 32) 
    {
      for (int SolidY = height-128; SolidY < height; SolidY += 32)
      {
        if (SolidX == width-192 && SolidY == height-128)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidX == width-192)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else if (SolidY == height-128)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(width-192, height-128, 192, 96);
    
    //platform 3
    for (int ObjectX = width-160; ObjectX < width; ObjectX += 32) 
    {
      if(ObjectX == width-160)
      {
        o.DrawImage(ObjectX, 128, 21);
      }
      else
      {
        o.DrawImage(ObjectX, 128, 22);
      }
    }    
    o.DrawSystems(width-160, 128, 160, 42); 
    
    //Right Walljump 1 
    for (int SolidY = 224; SolidY < height-128; SolidY += 32) 
    {
      if (SolidY == 224)
      {
        j.WallVisual(width-40, SolidY, 1);
      } else
      {
        j.WallVisual(width-40, SolidY, 0);
      }
    }
    j.drawRWall(width-40, 160, 20, height-128);
    
    //moving platform
    for (float SolidX = 700 + moveplat.MoveX; SolidX < 828 + moveplat.MoveX; SolidX += 32) 
    {
      if (SolidX == 700 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 224, 21);
      }
      else if (SolidX >= 792 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 224, 20);
      }
      else
      {
        o.DrawImage(SolidX, 224, 22);
      }
    }
    moveplat.DrawMovingobject(700 + moveplat.MoveX, 224, 128, 42, 1, 700, 1000);
  }
  
  // ------------------------------------------------------------------ EASY LEVEL 10 --------------------------------------------------------------------------
  
  void DrawLevel15() 
  {
    imageMode(CORNER);
    for (int ObjectY = 444; ObjectY < height; ObjectY += 64) {
      if (ObjectY == 444)
      {
        image(GrappleTop, 742, ObjectY);
      } else
      {
        image(GrappleMid, 742, ObjectY);
      }
    }
    g.grapplepoint(750, 500);
    
    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();
    roomgoal.DrawRoomwarp(width-64, 382, 64, 168);

    //platform 1
    for (int SolidX = 0; SolidX < 256; SolidX += 32) 
    {
      if (SolidX == 224)
      {
        o.DrawImage(SolidX, 368, 20);
      } 
      else
      {
        o.DrawImage(SolidX, 368, 22);
      }
    }
    o.DrawSystems(0, 368, 256, 52);

    //platform2
    for (int SolidX = 0; SolidX < 256; SolidX += 32) 
    {
      if (SolidX == 224)
      {
        o.DrawImage(SolidX, 568, 20);
      } 
      else
      {
        o.DrawImage(SolidX, 568, 22);
      }
    }
    o.DrawSystems(0, 568, 256, 52);
    
    //platform 3
    for (int SolidX = 0; SolidX < 256; SolidX += 32) 
    {
      if (SolidX == 224)
      {
        o.DrawImage(SolidX, 168, 20);
      } 
      else
      {
        o.DrawImage(SolidX, 168, 22);
      }
    }
    o.DrawSystems(0, 168, 256, 52);

    //wall 1 (links
    for (int ObjectY = 0; ObjectY < 1300; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    //wall 2 (rechts
    for (int ObjectY = 550; ObjectY < 700; ObjectY += 32)
    {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, height); //wall 2

    //wall3 (midden
     for (int ObjectY = 134; ObjectY < 980; ObjectY += 32)
    {
      for(int ObjectX = width-980; ObjectX < width-916; ObjectX +=32)
      {
        if( ObjectX == width-980)
        {
          o.DrawImage(ObjectX, ObjectY, 21);
        }
        else
        {
          o.DrawImage(ObjectX, ObjectY, 20);
        }
      }
    }
    o.DrawSystems(width-980, 134, 32, height);
    
    //wall 4 (rechts hoog
    for (int ObjectY = 0; ObjectY < 350; ObjectY += 32)
    {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, height); 

    //floor
    for (int ObjectX = 0; ObjectX < 320; ObjectX += 32)
    {
      o.DrawImage(ObjectX, height-32, 1);
    }
    o.DrawSystems(0, height-32, 320, 32);

    //platform 4
    for (int SolidX = 1220; SolidX < width; SolidX += 32) 
    {
      if (SolidX == 1220)
      {
        o.DrawImage(SolidX, 550, 21);
      }
      else
      {
        o.DrawImage(SolidX, 550, 22);
      }
    }
    o.DrawSystems(1220, 550, 934, 32);
    //grapple point    
  }
  
  // ------------------------------------------------------------------ EASY LEVEL 11 --------------------------------------------------------------------------
  
  void DrawLevel16() 
  {
    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();
    
    s.DrawMovingSpike(562, 718, 16, 32, 7, 0);
    s.DrawMovingSpike(532, 718, 32, 32, 0, 0);
    s.DrawMovingSpike(502, 718, 16, 32, 8, 0);
        
    roomgoal.DrawRoomwarp(width-64, 0, 64, 250);  
    
    //platform 1
    for (int ObjectX = 0; ObjectX < 480; ObjectX += 32) 
    {
      o.DrawImage(ObjectX - 160, 750, 1);
      o.DrawImage(ObjectX - 160, 782, 0);
    }    
    o.DrawImage(320, 750, 3);
    o.DrawImage(320, 782, 6);
    o.DrawSystems(0, 750, 480-128, 32); 
    
    
    //platform 2  
    for (int ObjectX = 0; ObjectX < 128; ObjectX += 32) 
    {
      o.DrawImage(482 + ObjectX, 749, 22);
    }  
    o.DrawImage(450, 749, 21);
    o.DrawImage(610, 749, 20);
    o.DrawSystems(450, 749, 192, 32); 
    
    //platform 3 
    o.DrawImage(832, 600, 22);
    o.DrawImage(800, 600, 21);
    o.DrawImage(864, 600, 20);
    o.DrawSystems(800, 600, 96, 32); 
    
    //platform 4    
    o.DrawImage(600, 450, 21);
    o.DrawImage(632, 450, 22);
    o.DrawImage(664, 450, 20);
    o.DrawSystems(600, 450, 96, 32); 
    
    
    //platform 5 
    o.DrawImage(900, 350, 21);
    o.DrawImage(932, 350, 22);
    o.DrawImage(964, 350, 20);
    o.DrawSystems(900, 350, 96, 32); 
    
    //platform 5 
    for (int ObjectX = width-96; ObjectX < width; ObjectX += 32) 
    {
      if(ObjectX == width - 96)
      {
        o.DrawImage(ObjectX, 250, 21);
      }
      else
      {
        o.DrawImage(ObjectX, 250, 22);
      }
    }    
    o.DrawSystems(width - 96, 250, 96, 32); 
  
    //wall 1
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);
    
    //wall 3
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(width-32, 266 + ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, height);
  }
  
  // ------------------------------------------------------------------ EASY LEVEL 12 --------------------------------------------------------------------------
  
  void DrawLevel17() 
  {
    p.display();
    p.behavior();
    p.control();     
    playeranimation.draw();
    roomgoal.DrawRoomwarp(width-64, 0, 64, 325);

    //wall 1
    for (int ObjectY = 0; ObjectY < 1300; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    //wall 2
    for (int ObjectY = 325; ObjectY < 1000; ObjectY += 32)
    {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, height); //wall 2
    
    //floor
    for (int ObjectX = 0; ObjectX < 128; ObjectX += 32)
    {
        if (ObjectX == 96)
        {
          o.DrawImage(ObjectX, height-32, 3);
        } else
        {
          o.DrawImage(ObjectX, height-32, 1);
        }
    }
    o.DrawSystems(0, height-32, 128, 32);

    //platform 1
   for (int SolidX = 1150; SolidX < width; SolidX += 32) 
    {
      if (SolidX == 1150)
      {
        o.DrawImage(SolidX, 325, 21);
      }
      else
      {
        o.DrawImage(SolidX, 325, 22);
      }
    }
    o.DrawSystems(1150, 325, 934, 32);
    
    //grapple point
    
     imageMode(CORNER);
    for (int ObjectY = 344; ObjectY < height; ObjectY += 64) {
      if (ObjectY == 344)
      {
        image(GrappleTop, 792, ObjectY);
      } else
      {
        image(GrappleMid, 792, ObjectY);
      }
    }
    g.grapplepoint(800, 400);

    //moving platform
  
      for (float SolidX = 260 + moveplat.MoveX; SolidX < 350 + moveplat.MoveX; SolidX += 32) 
    {
      if (SolidX == 260 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 600, 21);
      }
      else if (SolidX == 324 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 600, 20);
      }
      else
      {
        o.DrawImage(SolidX, 600, 22);
      }
    }
    moveplat.DrawMovingobject(260+ moveplat.MoveX, 600, 100, 32, 2, 260, 460);
    
  }
  
  // ------------------------------------------------------------------ EASY LEVEL 13 --------------------------------------------------------------------------
  
  void DrawLevel18() 
  {
    p.display();
    p.behavior();
    p.control();     
    playeranimation.draw();
    roomgoal.DrawRoomwarp(width-64, 0, 64, 325);

    //wall 1
    for (int ObjectY = 0; ObjectY < 1300; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    //wall 2
    for (int ObjectY = 325; ObjectY < 1000; ObjectY += 32)
    {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, height); //wall 2
    
    //floor
    for (int ObjectX = 0; ObjectX < 128; ObjectX += 32)
    {
        if (ObjectX == 96)
        {
          o.DrawImage(ObjectX, height-32, 3);
        } else
        {
          o.DrawImage(ObjectX, height-32, 1);
        }
    }
    o.DrawSystems(0, height-32, 128, 32);
    
    //platform 1
    o.DrawImage(364, 769, 22);
    o.DrawSystems(364, 769, 32, 32);

    //platform2
    o.DrawImage(732, 770, 21);
    o.DrawImage(764, 770, 20);
    o.DrawSystems(732, 770, 92, 32);
    
    //platform3
    for (int SolidX = width-192; SolidX < width; SolidX += 32) 
    {
      for (int SolidY = height-128; SolidY < height; SolidY += 32)
      {
        if (SolidX == width-192 && SolidY == height-128)
        {
          o.DrawImage(SolidX, SolidY, 2);
        } else if (SolidX == width-192)
        {
          o.DrawImage(SolidX, SolidY, 5);
        } else if (SolidY == height-128)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(width-192, height-128, 192, 96);

    //platform4
    o.DrawImage(916, 470, 20);
    o.DrawSystems(916, 470, 32, 32);
    
    //platform 5
    for (int SolidX = 1150; SolidX < width; SolidX += 32) 
    {
      if (SolidX == 1150)
      {
        o.DrawImage(SolidX, 325, 21);
      }
      else
      {
        o.DrawImage(SolidX, 325, 22);
      }
    }
    o.DrawSystems(1150, 325, 934, 32);
  }
  
  // ------------------------------------------------------------------ EASY LEVEL 14 --------------------------------------------------------------------------
  
  void DrawLevel19() 
  {
    //Max zijn level  
    
    p.display();
    p.behavior();
    p.control();     
    playeranimation.draw();
    roomgoal.DrawRoomwarp(width-256, 122,94,22);
    item.DrawItem(64,630);
    
    
        //wall far left
    for (int ObjectY = 0; ObjectY < 672; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);
    //start platform
    for (int ObjectX = 0; ObjectX < 224; ObjectX += 32)
    {
      for (int ObjectY = 164; ObjectY < 324; ObjectY += 32)
      {
        if (ObjectY == 164 && ObjectX == 192)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectX == 192 && ObjectY <= 228)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else if (ObjectY == 164)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectY == 292)
        {
          o.DrawImage(ObjectX, ObjectY, 10);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
      o.DrawSystems(32, 164, 192, 160);
    //wall far right
  
    
    for (int ObjectY = 144; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(width-32, ObjectY, 21);
    }
    o.DrawSystems(width-32, 0, 32, height); //wall 2
    //connecting wall jump
    for (int SolidY = 144; SolidY <height; SolidY += 32) 
    {
      if (SolidY ==144)
      {
        j.WallVisual(width-40, SolidY, 1);
      } else
      {
        j.WallVisual(width-40, SolidY, 0);
      }
    }
    j.drawRWall(width-40, 144, 20, height);
    
        //platform walljump1
    
         for (int ObjectX = width-256; ObjectX < width-160; ObjectX += 32)
    {
      for (int ObjectY = 622; ObjectY < 644; ObjectY += 32)
      {
        if (ObjectY == 622 && ObjectX == width-160)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectX == width-160 && ObjectY <= 622)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else if (ObjectY == 622)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectY == 644)
        {
          o.DrawImage(ObjectX, ObjectY, 10);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
      o.DrawSystems(width-256, 622,94,22);
    
    //platform walljump2
    
         for (int ObjectX = width-256; ObjectX < width-160; ObjectX += 32)
    {
      for (int ObjectY = 372; ObjectY < 394; ObjectY += 32)
      {
        if (ObjectY == 372 && ObjectX == width-160)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectX == width-160 && ObjectY <= 372)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else if (ObjectY == 372)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectY == 394)
        {
          o.DrawImage(ObjectX, ObjectY, 10);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    
    o.DrawSystems(width-256, 372,94,22);
    
    //platform walljump3
    
         for (int ObjectX = width-256; ObjectX < width-160; ObjectX += 32)
    {
      for (int ObjectY = 144; ObjectY < 176; ObjectY += 32)
      {
        if (ObjectY == 144 && ObjectX == width-160)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectX == width-160 && ObjectY <= 144)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else if (ObjectY == 144)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectY == 176)
        {
          o.DrawImage(ObjectX, ObjectY, 10);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(width-256, 144,94,22);
    
   //random ass mini platform 
        for (int ObjectX = 0; ObjectX < 374; ObjectX += 32)
    {
      for (int ObjectY = 322; ObjectY < 450; ObjectY += 32)
      {
        if (ObjectY == 322 && ObjectX == 374)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectX == 374 && ObjectY <= 322)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else if (ObjectY == 322)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectY == 450)
        {
          o.DrawImage(ObjectX, ObjectY, 10);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(0,322,374,128);
    //spike
    s.SpikeSystems(374, 306, 32, 64);
    image(SpikeTopLeft, 374, 306);
    image(SpikeLeft, 374, 338);
    image(SpikeBottomLeft, 374, 370);
    
    
    //platform linksonder
        for (int SolidX = 0; SolidX < 332; SolidX += 32) 
    {
      for (int SolidY = 672; SolidY < height +32; SolidY += 32)
      {
        if (SolidY == 672)
        {
          o.DrawImage(SolidX, SolidY, 1);
        } else
        {
          o.DrawImage(SolidX, SolidY, 0);
        }
      }
    }
    o.DrawSystems(0,672,332,height);
    //grappling point
    imageMode(CORNER);
    for (int ObjectY = 444; ObjectY < height; ObjectY += 64) {
      if (ObjectY == 444)
      {
        image(GrappleTop, 592, ObjectY);
      } else
      {
        image(GrappleMid, 592, ObjectY);
      }
    }
    g.grapplepoint(600, 500);
    

    
     //random platform helemaal rechts
        for (int ObjectX = width-32; ObjectX < width; ObjectX += 32)
    {
      for (int ObjectY = 128; ObjectY < height; ObjectY += 32)
      {
        if (ObjectY == 128 && ObjectX == width)
        {
          o.DrawImage(ObjectX, ObjectY, 3);
        } else if (ObjectX == width && ObjectY <= 128)
        {
          o.DrawImage(ObjectX, ObjectY, 6);
        } else if (ObjectY == 128)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else if (ObjectY == height)
        {
          o.DrawImage(ObjectX, ObjectY, 10);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(width-32,128,32,height-128);
  }
  
  // ------------------------------------------------------------------ EASY LEVEL 15 --------------------------------------------------------------------------
  
  void DrawLevel20() 
  {
    p.display();
    p.behavior();
    p.control();
    playeranimation.draw();
    
    //wall 1
    for (int ObjectY = 0; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(0, ObjectY, 20);
    }
    o.DrawSystems(0, 0, 32, height);

    //Platform 1
    for (int SolidX = 464; SolidX < 656; SolidX += 32) 
    {
      if (SolidX == 464)
      {
        o.DrawImage(SolidX, 626, 21);
      } else if (SolidX == 624)
      {
        o.DrawImage(SolidX, 626, 20);
      } else
      {
        o.DrawImage(SolidX, 626, 22);
      }
    }
    o.DrawSystems(432, 626, 228, 32);
    
    //Platform 2
    for (int SolidX = 764; SolidX < 956; SolidX += 32) 
    {
      if (SolidX == 764)
      {
        o.DrawImage(SolidX, 626, 21);
      } else if (SolidX == 924)
      {
        o.DrawImage(SolidX, 626, 20);
      } else
      {
        o.DrawImage(SolidX, 626, 22);
      }
    }
    o.DrawSystems(732, 627, 215, 32);


    for (int SolidX = 232; SolidX < 880; SolidX += 32) 
    {
      if (SolidX == 232)
      {
        o.DrawImage(SolidX, 136, 21);
      } else if (SolidX >= 848)
      {
        o.DrawImage(SolidX, 136, 20);
      } else
      {
        o.DrawImage(SolidX, 136, 22);
      }
    }
    o.DrawSystems(232, 136, 668, 32);

    //GEM
    item.DrawItem(500, 400);

    for (float SolidX = 180 + moveplat.MoveX; SolidX < 272 + moveplat.MoveX; SolidX += 32) 
    {
      if (SolidX == 180 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 400, 21);
      } else if (SolidX == 244 + moveplat.MoveX) 
      {
        o.DrawImage(SolidX, 400, 20);
      } else
      {
        o.DrawImage(SolidX, 400, 22);
      }
    }
    moveplat.DrawMovingobject(180 + moveplat.MoveX, 400, 92, 32, 3, 180, 900);

    s.SpikeSystems(380, 610, 75, 50);
    image(SpikeTopRight,380, 598);
    image(SpikeRight, 380, 630);
    image(SpikeBottomRight, 380, 662);

    image(SpikeTopLeft, 410, 598);
    image(SpikeLeft, 410, 630);
    image(SpikeBottomLeft, 410, 662);
    
    s.SpikeSystems(680, 630, 75, 50);
    image(SpikeTopRight,680, 598);
    image(SpikeRight, 680, 630);
    image(SpikeBottomRight, 680, 662);


    image(SpikeTopLeft, 710, 598);
    image(SpikeLeft, 710, 630);
    image(SpikeBottomLeft, 710, 662);
    
    s.SpikeSystems(680, 330, 75, 50);
    image(SpikeTopRight,680, 298);
    image(SpikeRight, 680, 330);
    image(SpikeBottomRight, 680, 362);


    image(SpikeTopLeft, 710, 298);
    image(SpikeLeft, 710, 330);
    image(SpikeBottomLeft, 710, 362);
    
    s.SpikeSystems(980, 210, 75, 50);
    image(SpikeTopRight,980, 178);
    image(SpikeRight, 980, 210);
    image(SpikeBottomRight, 980, 242);


    image(SpikeTopLeft, 1010, 178);
    image(SpikeLeft, 1010, 210);
    image(SpikeBottomLeft, 1010, 242);

    //spike 2
    for (int ObjectX = 200; ObjectX < width; ObjectX += 32)
    {
      s.DrawSpike(ObjectX, 736, 0);
    }
    s.SpikeSystems(200, 741, width, 30);



    //wall 1
    for (int ObjectY = 650; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(200, ObjectY, 21);
    }
    o.DrawSystems(200, 650, 32, 416);

    for (int ObjectY = 650; ObjectY < height; ObjectY += 32)
    {
      o.DrawImage(220, ObjectY, 20);
    }
    o.DrawSystems(220, 651, 32, 416);


    //platform 2
    for (int ObjectX = width-240; ObjectX < width; ObjectX += 32)
    {
      for (int ObjectY = 160; ObjectY < height; ObjectY += 32)
      {
        if (ObjectX == width-240 && ObjectY == 160)
        {
          o.DrawImage(ObjectX, ObjectY, 2);
        } else if (ObjectX == width-240)
        {
          o.DrawImage(ObjectX, ObjectY, 5);
        } else if (ObjectY == 160)
        {
          o.DrawImage(ObjectX, ObjectY, 1);
        } else
        {
          o.DrawImage(ObjectX, ObjectY, 0);
        }
      }
    }
    o.DrawSystems(width-240, 160, 320, 750);   


    //Right Walljump 1 
    for (int SolidY = 160; SolidY < 860; SolidY += 32) 
    {
      if (SolidY == 160)
      {
        j.WallVisual(width-245, SolidY, 1);
      } else if (SolidY == 828)
      {
        j.WallVisual(width-245, SolidY, 2);
      } else
      {
        j.WallVisual(width-245, SolidY, 0);
      }
    }
    j.drawRWall(width-245, 160, 20, 700);

    //Floor
    for (int ObjectX = 0; ObjectX < width; ObjectX += 32)
    {
      for (int ObjectY = 768; ObjectY < 1024; ObjectY += 32)
      {
        if (ObjectX > width - 250) {
          o.DrawImage(ObjectX, ObjectY, 0);
        } else {
          o.DrawImage(ObjectX, ObjectY, 1);
        }
      }
    }
    o.DrawSystems(0, 768, width, 160);
    
    //left wall jump
    for (int SolidY = 160; SolidY < height - 500; SolidY += 32) 
    {
      if (SolidY == 160)
      {
        j.WallVisual(20, SolidY, 3);
      } 
      else if(SolidY >= height - 532)
      {
        j.WallVisual(20, SolidY, 4);
      }
      else
      {
        j.WallVisual(20, SolidY, 0);
      }
    }
    j.drawLWall(20, 160, 20, height-500);
    
    levelend.DrawLevelEnd(1250, 128);
    roomgoal.DrawRoomwarp(126700000, 100, 40, 100);
  }
}
