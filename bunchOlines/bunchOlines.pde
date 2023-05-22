float xoff = 10;
float yoff = 100;
float x2off = 50;
float y2off = 25;
int e = 0;
int x = 0;

void setup (){
  size(800, 800);
  frameRate(60);
  background(0);
}

void draw() {
background(0);
noiseDetail(10);
lines();
e++;

  }
  
  void lines(){
      for (int i = 0; i < 1000; i++) {
    float a = noise(xoff);
    float b = noise(yoff);
    float c = noise(x2off);
    float d = noise(y2off);
    xoff += 0.001;
    yoff += 0.001;
    x2off += 0.001;
    y2off += 0.001;
    x += 1.0;
    stroke(a*width/3, b*height/3, c*width/3, d*height/3);
    line(sin(a), sin(b), sin(c)*width, sin(d)*height);
    
    fill(a*width/3, b*height/3, c*width/3, d*height/3);
    ellipse(0, 0, c*400, c*400);
    
    
      }
}
