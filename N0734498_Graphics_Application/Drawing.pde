class Shape {
 String name;
 String type;
 color colour;
 float xPos;
 float yPos;
 int wdth;
 int hght;
 color borderColour = color(0,0,0); // processing default
 float borderWeight = 1; // processing default
 float scale = 1;
 ArrayList points;

 Shape(String name, String type, color tempColour, float tempXpos, float tempYpos,int tempWdth, int tempHght) {
  this.name = name;
  this.type = type;
  colour = tempColour;
  xPos = tempXpos;
  yPos = tempYpos;
  wdth = tempWdth;
  hght = tempHght;
 }
 
 Shape(String name, String type, ArrayList tempPoints){
   this.name = name;
   this.type = type;
   points = tempPoints;
 }
 
 // Changes colour of the shape instance
 public void setColour(color c){
   colour = c;
 }
 
 public void setBorderColour(color c){
   borderColour = c;
 }
 
 public void setBorderWeight(float f){
   borderWeight = f;
 }
 
 public void setScale(float f){
   scale = f;
 }
 
 void display() {
   stroke(0);
   fill(colour);
   stroke(borderColour);
   strokeWeight(borderWeight);
   if (type == "rect"){
     rect(xPos,yPos,wdth*scale,hght*scale);
   }
   else if (type == "ellipse"){
     ellipseMode(CORNER); // needed for colour change to work else fill area was outside of shape area
     ellipse(xPos, yPos, wdth*scale, hght*scale);
   }
   else if (type == "line"){
     line(xPos, yPos, wdth, hght);
   }
   else if (type == "close-poly"){
     beginShape();
     noFill();
     for (int i = 0; i < points.size(); i++){
       vertex((float[])points.get(i));
     }
     endShape(CLOSE);
   }
 }
 
 boolean inShape(int x, int y){
   if((x > xPos-wdth) & x < (xPos+wdth)){
     if((y > yPos-hght)  & y < (yPos+hght)){
       
       return true;
     }
   }
   return false;
 }
 
 
 
}  
