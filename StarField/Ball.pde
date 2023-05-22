class Ball{
  float x;
  float y;
  float ballSize;
  float ballSpeedX;
  float ballSpeedY;
  
  Ball(){
    //have the starting point for the ball be around the center of the screen
    x = random((width/2)-10, (width/2)+10);
    y = random((height/2)-10, (height/2)+10);
    ballSize = 1;
    
    //determine which way the balls will move off the screen
    //x
    if(random(1) > 0.5) {
    ballSpeedX = random(-20, 0);
    } else { ballSpeedX = random(0,20);}
    
    //y
    if(random(1) > 0.5) {
    ballSpeedY = random(-20, 0);
    } else { ballSpeedY = random(0, 20);}
  }
  
  void drawBall(){
    moveBall();
    fill(255);
    noStroke();
    if (abs(ballSpeedX) + abs(ballSpeedY) >= 20) {
    circle(x, y, ballSize);
    
    //after effects
    fill(255, 100);
    circle(x - ballSpeedX, y - ballSpeedY, ballSize);
    fill(255, 50);
    circle(x - (2*ballSpeedX), y - (2*ballSpeedY), ballSize);
    }
  }
  
  void moveBall(){
    ballSize = ballSize+0.2;
    x = x + ballSpeedX;
    y = y + ballSpeedY;
  }
}
