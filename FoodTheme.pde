int pressed = 0;
int pressedstate = 0;
float poy =700;
int boxdi = 1000;
PImage full;
PImage empty;
float speed = 5;
skinnyguy myskinnyguy;
fatguy myfatguy;


void setup(){
 background (255);
 size(1000,800);
 full = loadImage("fullplate-melih-kesmen.jpg");
 empty = loadImage("20130304-153222.jpg");
 myskinnyguy = new skinnyguy();
 myfatguy = new fatguy();
}

void draw(){
  
  update();
}

void update(){
  if(pressedstate==1){

    nomface();
}else if(pressedstate==2){
  background(255);
  image(empty,400,300,500,300);
  myfatguy.display();
}else{
  background(255);  
  image(full,400,300,500,300);
  myskinnyguy.display();
  myskinnyguy.move();
}
}




class skinnyguy{
  int centerx, centery, centerq,centerf;
  
  skinnyguy(){
    centerx = round(random(250,600));
    centery = round(random(250,600));
  }
  void move(){
  centerx = centerx+round(random(-4,4));
  centery = centery+round(random(-4,4));
  }
  void display(){
    //stick dude
    fill(#FFE6B4);
    line(200,centery,200,centery+100);
    line(160,centery,200,centery+20);
    line(240,centery,200,centery+20);
    line(200,centery+100,160,centery+120);
    line(200,centery+100,240,centery+120);
    ellipse(200,centery-25,100,50);
    //eyes
    fill(0);
    ellipse(220,centery-30,10,10);
    ellipse(180,centery-30,10,10);
    //mouth
    ellipse(200,centery-15,40,20);
    //text
    textSize(30);
    text("FOOD!!!", 450,200);
}
}

class fatguy{
 void display(){
   fill(#FFE6B4);
     ellipse(220,300,50,50);
   fill(0);
   ellipse(210,290,10,10);
   ellipse(230,290,10,10);
   ellipse(220,400,200,150);
   ellipse(220,315,30,10);
   line(200,475,200,500);
   line(240,475,240,500);
   line(120,400,120,425);
   line(320,400,320,425);
   text("*Heavy Breathing*", 100,200);
 }
}


void nomface(){
 //face build
  fill(#FFE6B4);
 rect(00,00,1000,1000);
 fill(255);
 //eyes
 ellipse(250,200,300,200);
 ellipse(750,200,300,200);
 fill(0);
 ellipse(250,200,200,200);
 ellipse(750,200,200,200);
 //mouth
 fill(0);
 rect(0,700,1000,100);
 fill(255);
 rect(0,650,1000,50);
 //teeth
 for (int x = 10; x <= 1000; x = x + 50){
   stroke(0);
   strokeWeight(2);
   line(x+10, 650,x+10,700);
 }
 fill(0);
 stroke(0);
 textSize(50);
 text("OM NOM NOM NOM NOM", 200,500);
}



void keyPressed(){
  pressed = pressed + 1;
  pressedstate = (pressed % 3);
}
