class Item
{
  int ItemX, ItemY;
  int ItemScale = 30;
  boolean Active = true;

  
  void DrawItem(int ItemX, int ItemY) {
    //collision check
    if(Active){
    if(p.x + p.playerwidth >= ItemX && p.x <= ItemX + ItemScale && p.y + p.playerheight >= ItemY && p.y <= ItemY + ItemScale) {
      t.Score += 50;
      Active = false;
      
      //Active = false;
    }
    }
    
    //powerup visuals
    if(Active == true) {
      fill(0, 255, 0);
      image(itemimage,ItemX, ItemY, ItemScale,ItemScale);
    }
  }
}
