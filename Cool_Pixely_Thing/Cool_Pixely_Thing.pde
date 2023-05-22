float a;
float b;
float c;
float d;
float e;
float f;
float g;
float h;
float i;
float j;
float k;
float x;
float f2;
void setup(){
size(500, 500);
//background(190,130,110);
frameRate(1000);
}


void draw(){
  size(500, 500);
  x++;
  //if (x==1000){
 //background(200,200,200);
 //x=0;
 // }
  noStroke();
  a=random(400,500);
  b=random(0,500);
  c=random(0,10);
  d=random(0,10);
  e=random(300,400);
  f=random(200,300);
  f2=random(200,300);
  g=random(100,200);
  h=random(0,100);
  i=random(0,500);
  j=random(0,500);
  k=random(0,500);
  fill(65,65,20,160);
  //bezier(d, c, 1, 1, a, b, c, d);
 // bezier(c, d, 1, 1, a*3, b*3, c, d);
  fill(235,215,190,100);
 // bezier(a*2, b*2, c/2, d, c, d, 1, 1 );
  //fill(250,250,250);
  //circle(a,b,c);
  rectMode(CORNER);
  fill(b,160,130, 100);
  rect(a,b,c*(c/2), d*(d/2));
   fill(240,i,130, 100);
  rect(e,i,c*(c/2), d*(d/2));
   fill(j,180,130, 100);
  rect(f,j,c*(c/2), d*(d/2));
  fill(g,k,130, 100);
  rect(g,k,c*(c/2), d*(d/2));
  fill(j,g,130, 100);
  rect(h,j,c*(c/2), d*(d/2));
  fill(g,j,h, 100);
  rect(j,k,c*(c/2), d*(d/2));
  rect(k,j,c*(c/2), d*(d/2));
  fill(f2,f/2,h, 150);
 // rect(f,f2,c*(c/2), d*(d/2));
}
