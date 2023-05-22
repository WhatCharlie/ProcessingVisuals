class Enemy{
  int r;
  float x1, y1;
  Enemy(){
    r = 120;
    x1 = width;
    y1 = height - r;
  }
  
  void move(){
    x1 -= 16;
    if(orbX <= x1 + 60){
      if(orbX >= x1 - 60){
        if(orbY <= y1 + 60){
          if(orbY >= y1 - 60){
            dead=true;
          }
        }
      }
    }
  }
  
  void show(){
    stroke(150, 50, 25, 200);
    fill(150, 50, 25);
    ellipse(x1, y1, r*0.75, r*0.75);
  }
}
  
            
