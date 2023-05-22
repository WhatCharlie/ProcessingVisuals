float r = 100;
float g = 100;
float b = 100;
float o = 0;
float size = 0;
int x;
int y;

void setup(){
  size(800, 800);
  background(0);
  smooth();
  frameRate(1000);
}

void draw(){
  noStroke();
  r=r+0.2;
  g=g+0.2;
  o=o+0.1;
  if (size <= 50){size=size+0.1;}
  fill(random(r-100,r+100), random(g-100,g+100), random(g-100,g+100), o);
  square(random(sin(x)*500,sin(x)*1000),y, size);
  x++;
  y++;
}
