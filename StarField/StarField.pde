ArrayList<Ball> balls = new ArrayList<Ball>();
float showUp=0;

void setup(){
  size(1450, 800);
  frameRate(60);

}

void draw(){
  
  background(0);
  for (int i = 0; i < 5; i++) {
  Ball newBall = new Ball();
  balls.add(newBall);
  }
  
  for (Ball ball : balls) {
    ball.drawBall();
  }
  fill(255, 255, 100, showUp);
  textSize(128);
  
}
