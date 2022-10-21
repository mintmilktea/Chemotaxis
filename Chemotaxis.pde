Bacteria [] bob = new Bacteria[10];
Bacteria sue = new Bacteria();


void setup(){    
 background(0);
 rectMode(CENTER);
 size(500, 500);
 for(int i = 0; i < bob.length; i++){
 bob[i] = new Bacteria(250);
 }
}  
 
void draw(){    
   background(0);
   for(int i = 0; i < bob.length; i++){
     bob[i].move();
     bob[i].show();
     
   }
   
   sue.moveTwo();
   sue.showTwo();
}  
 
class Bacteria{    
 int myX, myY, myColor;
 Bacteria(int i){
   myX = myY = i;
   myColor = color(77, 158, 255);
 }
 
 Bacteria(){
   myX = mouseX;
   myY = mouseY;
   myColor = color(250, 96, 91);
 }
 
 
void move(){
   myX = myX + (int)(Math.random() * 7) - 3;
   myY = myY + (int)(Math.random() * 7) - 3;
   if(myX < mouseX){
     myX = myX + (int)(Math.random() * 5) - 1;
   }else myX = myX + (int)(Math.random() * 5) - 3;
   
   if(myY < mouseY){
     myY = myY + (int)(Math.random() * 5) - 1;
   }else myY = myY + (int)(Math.random() * 5) - 3;
}
 
 void moveTwo(){
   myX = mouseX;
   myY = mouseY;
 }
 
 void show(){
   fill(myColor);
   ellipse(myX, myY, 30, 30);
   fill(0,0,0);
   rect(myX, myY, 20, 5);
 }
 void showTwo(){
   fill(myColor);
   ellipse(myX, myY, 30, 30);
   fill(0,0,0);
   rect(myX, myY, 20, 5);
   rect(myX, myY, 5, 20);
 }

 
}    
