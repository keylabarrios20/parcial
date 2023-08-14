void setup(){
  size(800, 600);
  background(0);  
}

void draw(){
  
  noStroke();
  fill(255, 50, 50, 30);
  rect(0, 0, width, height);
  fill(255, 255, 255);
   ellipse(mouseX, mouseY, 50, 50);
 
}
