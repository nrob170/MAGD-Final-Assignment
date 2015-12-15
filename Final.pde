int pressed = 0;// setting up state changes
int pressedstate = 0;
Timer myTimer; //calling Timer class
Castle myCastle;//calling Castle class
Coins MyCoins;//calling Coins Class
Coins[] coin;//I'm not sure what this does, but I need it
PImage mario;//these 3 call the images (appropriately named for each character)
PImage luigi;
PImage toad;
PImage castle;
PImage peach;
int numberCoins;//again not sure why I need this
float radius =40;
float circle_X = 792;
float circle_Y = 770;


void setup(){
  size(1000,1000);
  background(0);
  peach = loadImage("peach (1).jpg");
  mario = loadImage("mario.jpg");
  luigi = loadImage("Luigi_SPP2.jpg");
  toad = loadImage("PaperToadDTT.jpg");
  castle = loadImage("SMBCastle.jpg");
  myCastle = new Castle();
  coin = new Coins[1000];
  for (int x = 0; x < coin.length-1; x++){
    coin[x] = new Coins();
  }
  myTimer = new Timer (500);
  myTimer.timerStart();
}

void draw(){
  background(0);
  myCastle.display();

   update();
  
  if ( dist(mouseX, mouseY, circle_X, circle_Y) < radius) {//this will be the collision
    image(peach,0,0,1000,1000);
   
  } else {
    fill(255);
    ellipse(1,1,1,1);
   

 if(myTimer.isFinished()){
    numberCoins++;
    myTimer.timerStart();
  }
  if(numberCoins == coin.length-1){
    numberCoins = 0;
  }
  
  for(int newCoins = numberCoins; newCoins > 0 ; newCoins --){
    coin[newCoins].update();
    coin[newCoins].coine();
  }
}
}

  
  void keyPressed(){//this is how my state change is able to happen
    pressed = pressed + 1;
    pressed = (pressed % 3);
  }
  
  void update(){
     if (pressed==1){
   image(luigi,mouseX-50,mouseY-50,100,100);//these three are for a keypress to change the image that the mouse moves
  }else if (pressed==2){
    image(toad,mouseX-50,mouseY-50,100,100);
  }else{
    image(mario,mouseX-50,mouseY-50,100,100);
  }
  }
  
  
  class Castle{
  
  void display(){
  noStroke();
  fill(0);
  rect(0,0,1000,1000);
  fill(#792B07);
  rect(0,800,1000,1000);
  stroke(0);
  strokeWeight(2);
  line(0,800,1000,800);//this is the brick at the bottom. I coud have done a for loop, but I dont understand the mechanics of them and it woud have taken me longer than what I did
  line(0,850,1000,850);
  line(0,900,1000,900);
  line(0,950,1000,950);
  line(0,1000,1000,1000);
  line(100,850,100,900);
  line(200,850,200,900);
  line(300,850,300,900);
  line(400,850,400,900);
  line(500,850,500,900);
  line(600,850,600,900);
  line(700,850,700,900);
  line(800,850,800,900);
  line(900,850,900,900);
  line(50,800,50,850);
  line(150,800,150,850);
  line(250,800,250,850);
  line(350,800,350,850);
  line(450,800,450,850);
  line(550,800,550,850);
  line(650,800,650,850);
  line(750,800,750,850);
  line(850,800,850,850);
  line(950,800,950,850);
  line(50,900,50,950);
  line(150,900,150,950);
  line(250,900,250,950);
  line(350,900,350,950);
  line(450,900,450,950);
  line(550,900,550,950);
  line(650,900,650,950);
  line(750,900,750,950);
  line(850,900,850,950);
  line(950,900,950,950);
  line(100,950,100,1000);
  line(200,950,200,1000);
  line(300,950,300,1000);
  line(400,950,400,1000);
  line(500,950,500,1000);
  line(600,950,600,1000);
  line(700,950,700,1000);
  line(800,950,800,1000);
  line(900,950,900,1000);
   image(castle,600,400,400,400);// this is the castle
  }
 
 class Coins{
  int centerX, centerY, size;
 
  Coins(){
    centerX = round(random(width));
    centerY = 10;
    size = round(random(50, 100));
  }
  
  
  
  void update(){
    centerX = round(random(0)) + centerX;
    centerY = centerY + 1;
  }
  
  void coine(){//this is to represent a mario coin
    stroke(#938504);
    strokeWeight(1);
    fill(#FFEF5D);
    ellipse(centerX, centerY, 50,60);
    ellipse(centerX,centerY, 25,35);
    strokeWeight(3);
    line(centerX,centerY-8,centerX,centerY+8);
  }
}

class Timer{
  float startTime, stopTime; // two variables to keep track of the time that the timer starts and length of time for the timer.
   boolean started = false;  // keep track of the timer, where it's been started on not. 
  
  //constructor. This sets the amount of the time to lapse before it sets the boolean below to true. 
  // an example use would be 
  // Timer myTimer = new Timer(2000);    <---- that sets the timer to 2 seconds.
  Timer(float _stopTime){
    stopTime = _stopTime;
  }
  
  // you can call this anyway (inside the Setup which would start almost immediately or inside the draw loop, which would make 
  // it restart ever cycle.
  void timerStart(){
    startTime = millis();
    started = true;
  }
  
  void stopTimer(){
    started = false;
    println("time stopped");
  }
  
  // place this in your draw() loop to cheen the time has lapse.
  // an example block of code might be:
  //   if (myTimer.isFinished(){
  //      text("EXPLOSION!", 100, 100);
  //    }
  boolean isFinished(){
    float passedTime = millis() - startTime;
    if((passedTime > stopTime) && (started)) {
      return true;
    } else {
      return false;
    }
  }
}
}
