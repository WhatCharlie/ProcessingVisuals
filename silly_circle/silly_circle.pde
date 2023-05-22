float t;

void setup(){
  
  size(500, 500);
  frameRate(1000);
}

void draw() {
  fill(51, 10);
  rect(0,0,width, height);
  //stroke(255);
  //strokeWeight(5);
  
  translate(width/2, height/2);
  noStroke();
  fill(200, random(100, 200), random (0, 150));
  rect(x(t), y(t),6, mouseY);
 // point(x(t), y(t));
  t++;
}

float x(float t){
  return cos(t/10) * mouseX;
}
float y(float t){
  return sin(t/10) * mouseY;
}
