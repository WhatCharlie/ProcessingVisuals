float angle = 45.1;
float branch_ratio = 0.67;
    

void setup(){
  size(400,400);

}

void draw(){
  background(120, 120, 140);
    noStroke();
  
  //sun
  fill(240, 160, 50, 100);
  ellipse(width/10, height/5, 145, 135);
  fill(255, 100, 50, 100);
  ellipse(width/10, height/5, 125, 137);
  
    //land
  fill (25, 50, 10, 100); 
  ellipse (width/2, height, width*2, height/2);
  fill (25, 50, 10, 100); 
  ellipse (width/2, height, width*2, height/4);
  fill (20, 25, 5, 50); 
  ellipse (width/2, height, width*1.6, height*0.74);
  
  //mountain
  fill (50, 40, 32, 100);
  bezier (-100, height * 0.8, width/2, height/2, 
  width * 0.6, height * 0.76, width/4, height/2);
  

  
  //trees
  stroke(255);
  translate(width/2, height);
  branch(100);
  }

void branch(float len){
  strokeWeight (2);
  stroke (40, 40, 20);
  line(0,0,0,-len);
  translate(0, -len);
  if (len > 4){
    pushMatrix();
    rotate(cos(angle));
    branch(len * branch_ratio);
    popMatrix();
    pushMatrix();
    rotate (sin(-angle));
    branch(len * branch_ratio);
    popMatrix();
        
    
    //leaves
    noStroke ();
    fill (50, 190, 150, random (0, 100));
    translate(len, len);
    ellipse(len, len, 10, 12);
  }
}
 void mouseWheel(MouseEvent event){
   angle += event.getCount()/10.0;
 }
