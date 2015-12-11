int pressed = 0;
int pressedstate = 0;
Timer myTimer;
animals myanimals;
mvmt mymvmt;
PImage G;
PImage S;

void setup(){
  size(1000,800);
  myTimer = new Timer(7000);
  myanimals = new animals();
  mymvmt = new mvmt();
  G = loadImage("Grassland.jpg");
  S = loadImage("Savannah.jpg");
  
  
}

void draw(){
  background(255);
  if (pressedstate==1){
    image(G,0,0,width,height);
    myanimals.tiger();
    mymvmt.move();
  }else{
   image(S,0,0,width,height);
    myanimals.lion();
   mymvmt.move();
  }
  if (myTimer.isFinished()){
    mymvmt.words();
  }
}

void mousePressed(){
  pressed = pressed + 1;
  pressedstate = (pressed % 2); 
}




class animals{
 
 
 void tiger(){
 fill(#F58C1B);
 noStroke();
 ellipse(300,600,300,100);
 stroke(0);
 strokeWeight(8);
 line(200,567,200,633);
 line(250,555,250,642);
 line(300,552,300,648);
 line(350,555,350,642);
 line(400,567,400,633);
 stroke(#F58C1B);
 line(230,642,230,742);
 line(210,642,210,742);
 line(370,642,370,742);
 line(390,642,390,742);
 strokeWeight(15);
 stroke(255);
 fill(#F58C1B);
 ellipse(460,560,90,100);
 fill(0);
 ellipse(480,550,20,20);
 ellipse(450,550,20,20);
 strokeWeight(10);
 stroke(0);
 line(450,580,480,580);
 }
 
 
 void lion(){
  fill(#F5E979);
 noStroke();
 ellipse(300,600,300,100);
 stroke(#F5E979);
 line(230,642,230,742);
 line(210,642,210,742);
 line(370,642,370,742);
 line(390,642,390,742);
 strokeWeight(15);
 stroke(#A73D19);
 fill(#F5E979);
 ellipse(460,560,90,100);
 fill(0);
 stroke(255);
 ellipse(480,550,20,20);
 ellipse(450,550,20,20);
 strokeWeight(10);
 stroke(0);
 line(450,580,480,580); 
   
 }
  
}
  
  
  
  
  
  
  class Timer{
  int savedTime;  // When Timer started
  int totalTime;  // How long Timer should last
  
  // The constructor, set how long the Timer last with integer value
  Timer(int _totalTime){
    totalTime = _totalTime;
  }
  
  // Start the Timer
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
   // check how much time has passed
   int passedTime = millis() - savedTime;
   if (passedTime > totalTime) {
     return true;
   } else {
     return false;
   }
  }
}





class mvmt{
  int centerx, centery, offset1, offset2, offset3, offset4, q1, q2 ,q3;
  
  mvmt(){
    centerx = round(random(0, width));
    centery = round(random(0, height));
  }
  
  void words(){
    fill(#FFAC05);
    textSize(30);
    text("RAWR",centerx,centery);
   fill(#F5E979);
    text("RAWR", centerx+60,centery+120);
    fill(0);
    text("RAWR", centerx+30,centery+60);
  }
  
  void move(){
   if(keyPressed){
      if(key == 'w'){
        centery = centery - 30;
      } 
      if(key == 'a'){
        centerx = centerx - 30;
      }
      if(key == 'd'){
        centerx = centerx + 30;
      } 
      if(key == 's'){
        centery = centery + 30;
      }
    } 
  }

}
