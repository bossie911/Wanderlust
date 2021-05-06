class HoveredLetter {
  String hoveredLetter;
  boolean hoveringOK;

  //200 . 300
  //289 . 433
  //Width = 89
  //height = 133

  void getHoveredLetter() {
    if (mm.menuCursorX < 289 && mm.menuCursorX > 200 && mm.menuCursorY > 300 && mm.menuCursorY < 433) {
      hoveredLetter = "A";
      fill(255, 255, 0, 140);
      rect(200, 300, 89, 133);
      fill(255);
    }

    if (mm.menuCursorX < 380 && mm.menuCursorX > 289 && mm.menuCursorY > 300 && mm.menuCursorY < 433) {
      hoveredLetter = "B";
      fill(255, 255, 0, 140);
      rect(287, 300, 95, 133);
      fill(255);
    }

    if (mm.menuCursorX < 470 && mm.menuCursorX > 379 && mm.menuCursorY > 300 && mm.menuCursorY < 433) {
      hoveredLetter = "C";
      fill(255, 255, 0, 140);
      rect(377, 300, 95, 133);
      fill(255);
    }

    if (mm.menuCursorX < 560 && mm.menuCursorX > 469 && mm.menuCursorY > 300 && mm.menuCursorY < 433) {
      hoveredLetter = "D";
      fill(255, 255, 0, 140);
      rect(467, 300, 95, 133);
      fill(255);
    }

    if (mm.menuCursorX < 650 && mm.menuCursorX > 559 && mm.menuCursorY > 300 && mm.menuCursorY < 433) {
      hoveredLetter = "E";
      fill(255, 255, 0, 140);
      rect(557, 300, 95, 133);
      fill(255);
    }
    if (mm.menuCursorX < 740 && mm.menuCursorX > 649 && mm.menuCursorY > 300 && mm.menuCursorY < 433) {
      hoveredLetter = "F";
      fill(255, 255, 0, 140);
      rect(647, 300, 95, 133);
      fill(255);
    }    
    if (mm.menuCursorX < 830 && mm.menuCursorX > 739 && mm.menuCursorY > 300 && mm.menuCursorY < 433) {
      hoveredLetter = "G";
      fill(255, 255, 0, 140);
      rect(737, 300, 95, 133);
      fill(255);
    }
    if (mm.menuCursorX < 920 && mm.menuCursorX > 829 && mm.menuCursorY > 300 && mm.menuCursorY < 433) {
      hoveredLetter = "H";
      fill(255, 255, 0, 140);
      rect(827, 300, 95, 133);
      fill(255);
    }   

    if (mm.menuCursorX < 1010 && mm.menuCursorX > 919 && mm.menuCursorY > 300 && mm.menuCursorY < 433) {
      hoveredLetter = "I";
      fill(255, 255, 0, 140);
      rect(917, 300, 95, 133);
      fill(255);
    }   


    if (mm.menuCursorX < 1100 && mm.menuCursorX > 1009 && mm.menuCursorY > 300 && mm.menuCursorY < 433) {
      hoveredLetter = "J";
      fill(255, 255, 0, 140);
      rect(1007, 300, 95, 133);
      fill(255);
    }   
    // row 2 ---------------------

    if (mm.menuCursorX < 289 && mm.menuCursorX > 200 && mm.menuCursorY > 433 && mm.menuCursorY < 566) {
      hoveredLetter = "K";
      fill(255, 255, 0, 140);
      rect(200, 433, 89, 133);
      fill(255);
    }

    if (mm.menuCursorX < 380 && mm.menuCursorX > 289 && mm.menuCursorY > 433 && mm.menuCursorY < 566) {
      hoveredLetter = "L";
      fill(255, 255, 0, 140);
      rect(287, 433, 95, 133);
      fill(255);
    }

    if (mm.menuCursorX < 470 && mm.menuCursorX > 379 && mm.menuCursorY > 433 && mm.menuCursorY < 566) {
      hoveredLetter = "M";
      fill(255, 255, 0, 140);
      rect(377, 433, 95, 133);
      fill(255);
    }

    if (mm.menuCursorX < 560 && mm.menuCursorX > 469 && mm.menuCursorY > 433 && mm.menuCursorY < 566) {
      hoveredLetter = "N";
      fill(255, 255, 0, 140);
      rect(467, 433, 95, 133);
      fill(255);
    }

    if (mm.menuCursorX < 650 && mm.menuCursorX > 559 && mm.menuCursorY > 433 && mm.menuCursorY < 566) {
      hoveredLetter = "O";
      fill(255, 255, 0, 140);
      rect(557, 433, 95, 133);
      fill(255);
    }
    if (mm.menuCursorX < 740 && mm.menuCursorX > 649 && mm.menuCursorY > 433 && mm.menuCursorY < 566) {
      hoveredLetter = "P";
      fill(255, 255, 0, 140);
      rect(647, 433, 95, 133);
      fill(255);
    }    
    if (mm.menuCursorX < 830 && mm.menuCursorX > 739 && mm.menuCursorY > 433 && mm.menuCursorY < 566) {
      hoveredLetter = "Q";
      fill(255, 255, 0, 140);
      rect(737, 433, 95, 133);
      fill(255);
    }
    if (mm.menuCursorX < 920 && mm.menuCursorX > 829 && mm.menuCursorY > 433 && mm.menuCursorY < 566) {
      hoveredLetter = "R";
      fill(255, 255, 0, 140);
      rect(827, 433, 95, 133);
      fill(255);
    }   

    if (mm.menuCursorX < 1010 && mm.menuCursorX > 919 && mm.menuCursorY > 433 && mm.menuCursorY < 566) {
      hoveredLetter = "S";
      fill(255, 255, 0, 140);
      rect(917, 433, 95, 133);
      fill(255);
    }   


    if (mm.menuCursorX < 1100 && mm.menuCursorX > 1009 && mm.menuCursorY > 433 && mm.menuCursorY < 566) {
      hoveredLetter = "T";
      fill(255, 255, 0, 140);
      rect(1007, 433, 95, 133);
      fill(255);
    }   


    //row 3 ---------------

    if (mm.menuCursorX < 289 && mm.menuCursorX > 200 && mm.menuCursorY > 566 && mm.menuCursorY < 699) {
      hoveredLetter = "U";
      fill(255, 255, 0, 140);
      rect(200, 566, 89, 133);
      fill(255);
    }

    if (mm.menuCursorX < 380 && mm.menuCursorX > 289 && mm.menuCursorY > 566 && mm.menuCursorY < 699) {
      hoveredLetter = "V";
      fill(255, 255, 0, 140);
      rect(287, 566, 95, 133);
      fill(255);
    }

    if (mm.menuCursorX < 470 && mm.menuCursorX > 379 && mm.menuCursorY > 566 && mm.menuCursorY < 699) {
      hoveredLetter = "W";
      fill(255, 255, 0, 140);
      rect(377, 566, 95, 133);
      fill(255);
    }

    if (mm.menuCursorX < 560 && mm.menuCursorX > 469 && mm.menuCursorY > 566 && mm.menuCursorY < 699) {
      hoveredLetter = "X";
      fill(255, 255, 0, 140);
      rect(467, 566, 95, 133);
      fill(255);
    }

    if (mm.menuCursorX < 650 && mm.menuCursorX > 559 && mm.menuCursorY > 566 && mm.menuCursorY < 699) {
      hoveredLetter = "Y";
      fill(255, 255, 0, 140);
      rect(557, 566, 95, 133);
      fill(255);
    }
    if (mm.menuCursorX < 740 && mm.menuCursorX > 649 && mm.menuCursorY > 566 && mm.menuCursorY < 699) {
      hoveredLetter = "Z";
      fill(255, 255, 0, 140);
      rect(647, 566, 95, 133);
      fill(255);
    }    





    if (mm.menuCursorX < 1100 && mm.menuCursorX > 919 && mm.menuCursorY > 566 && mm.menuCursorY < 699) {
      fill(255, 255, 0, 140);
      rect(919, 566, 180, 133);
      fill(255);
      hoveringOK = true;
      
      println("HOVERING OK");
      
    } else {
      hoveringOK =false;
    }

    println(hoveredLetter);
    
  }  
}
