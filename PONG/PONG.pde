float ballX, ballY;
boolean ballDown = true;
boolean ballRight = true;
boolean ballUp = false;
boolean ballLeft = false;
boolean dead = false;
int score = -1;


void setup (){
  size(700, 700);
  background(200, 100, 30);
 
}

void draw(){
  
  background(200, 100, 30);
  noStroke();
  textSize(30);
  fill(255, 200, 85);
  text("Score = " + score, width*0.75, height/10);
  fill(250);
  if (dead==false){
    rect(0, mouseY-100, 10, height/5);
    ball();
    if (ballUp==true) ballY=ballY-9;
    if (ballDown==true) ballY=ballY+9;
    if (ballRight==true) ballX=ballX+5;
    if (ballLeft==true) ballX=ballX-5;
  }
  if (dead==true){
    noStroke();
    fill(0);
    rect(0, 0, width, height);
    fill(200, 100, 30);
    textSize(50);
    text("GAME OVER", width/3.5, height/2);
  }
}

void ball (){

  ellipse(ballX, ballY, 30, 30);
  if (ballY >= height){
    ballUp=true;
    ballDown=false;
  }
  if (ballY <= 0){
    ballDown=true;
    ballUp=false;
  }
  if (ballX >= width){
    ballLeft=true;
    ballRight=false;
  }
  if (ballX <= 0){
    ballRight=true;
    ballLeft=false;
    if ((ballY > mouseY+40) || (ballY < mouseY-100)){
      dead = true;
    }
    else if ((ballY < mouseY+40) || (ballY > mouseY-100)){
      score = score + 1;
      
        
  }
    }
  }

  
    
