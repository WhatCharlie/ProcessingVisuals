ArrayList<Enemy> enemies = new ArrayList<Enemy>();
float angle = 45;
float orb_ratio = 0.67;
float x = 0;
float z = 0;
float orbX = 200;
float orbY = 480;
float orbX2 = 100;
float orbY2 = 480;
boolean up, left, right;
float red = 150;
float enemyX = 1000;
float jumpStop = 0;
int score = 0;
float sunsetR1 = 240;
float sunsetG1 = 160;
float sunsetB1 = 50;
float sunsetR2 = 250;
float sunsetG2 = 100;
float sunsetB2 = 50;
float backgroundR = 240;
float backgroundG = 180;
float backgroundB = 140;
boolean dead = false;
int deadAnimation = -600;


void setup(){
  size(1000,600);
}

void draw(){
  background(backgroundR,backgroundG,backgroundB);
  
    //Sunset
  sunsetR1=sunsetR1+0.005;
  sunsetG1=sunsetR1+0.005;
  sunsetB1=sunsetR1+0.05;
  sunsetR2=sunsetR1+0.005;
  sunsetG2=sunsetR1+0.005;
  sunsetB2=sunsetR1+0.05;
  backgroundR=backgroundR-0.05;
  backgroundG=backgroundG-0.05;
  backgroundB=backgroundB-0.015;
  

  //Sun
  noStroke();
  ellipseMode(CENTER);
  fill(sunsetR1, sunsetG1/2, sunsetB1/2, 150);
  ellipse(width/10, height/5, 145, 135);
  fill(sunsetR2, sunsetG2/2, sunsetB2/2, 150);
  ellipse(width/10, height/5, 125, 137);
  

  //Land
  fill(25,50,10,125);
  ellipse(width/2,height,width*2,height/2);
  fill(25,50,10,75);
  ellipse(width/2,height,width*2,height/4);
  fill(20,25,5,60);
  ellipse(width/2,height,width*1.6,height*0.74);
  
  //Mountain
  fill(50,40,32,50);
  bezier(-250,height*0.8,width/2,height/2,
  width*0.6,height*0.76,width/4,height/2);
  
  //Score
  if(dead==false){
    stroke(255,255,150,230);
    fill(255,255,150,230);
    textSize(40);
    text("Score = "+score, width*0.7, 75);
    score=score+1;
  }
  
  //The code for the enemy class was mainly written by youtuber "The Coding Train". I adjusted the parameters of everything to get the timing of the objects right.
  //https://www.youtube.com/watch?v=l0HoJHc-63Q
  //Enemies
  if(random(1) <= 0.02){
    enemies.add(new Enemy());
  }
  
  for(Enemy t : enemies){
    t.move();
    t.show();
  }
  
  //Death
  if (dead==true){
    if(deadAnimation <= 0){
      deadAnimation=deadAnimation+40;
      fill(0);
      rect(0, deadAnimation-40, width, height);
      strokeWeight(4);
      stroke(250, 200);
      fill(150, 240, 240);
      textSize(60);
      text("GAME OVER", width/3, deadAnimation*6);
      textSize(50);
      stroke(250, 200);
      fill(100, 250, 250, 200);
      text("High Score = "+score, width/3.5, deadAnimation*10);
    }
    if(deadAnimation>=0){
      deadAnimation=0;
    }
  }
  
  //Orb
  if(dead==false){
    stroke(255);
    translate(orbX, orbY);
    orb(100);
  }
  
  //Gravity
  if(orbY < (height*0.87)){
    orbY = orbY+15;
  }
  
  //Movement
  if(dead==false){
    if(orbY>=(height*0.6)){
      if(up==true){
        orbY = orbY - 40;
      }
    }
    if(left==true){
      if(orbX > 20){
        orbX = orbX-10;
      }
    }
    if(right==true){
      if(orbX<=width-40){
        orbX = orbX + 10;
      }
    }
  }
}
  
  
//The code for the orb was also derived from a "The Coding Train" video, which I adjusted from being a fractal tree into a gyrating orb.
//https://www.youtube.com/watch?v=0jjeOYMjmDU
void orb (float len){
  stroke (100*cos(x), 100*tan(x), 50*tan(x), 75);
  fill (cos(x), tan(x), tan(x), 75);
  line (sin(x), sin(x), 10*sin(x), 0);
  translate (width/300, height/3000);
  if (len > 4){
    pushMatrix();
    rotate(angle);
    orb(len * orb_ratio);
    popMatrix();
    pushMatrix();
    rotate(-angle);
    orb(len * orb_ratio);
    popMatrix();
    x = x + 100;
  }
}


void keyPressed(){
  up=false;
  if(key == ' '){
     if(orbY >= 500){
       if(jumpStop < 1){
         up = true;
         jumpStop = jumpStop+1;
        }
      }
    }
  if(key == 'd' || key == 'D') right=true;
  if(key == 'a' || key == 'A') left=true;
}

void keyReleased(){
  if(key == ' '){
    up=false;
    jumpStop=0;
  }
  if(key == 'd' || key == 'D') right=false;
  if(key == 'a' || key == 'A') left=false;
}
    
