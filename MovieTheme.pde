int pressState = 0;//everything with the word "pressState" is used to make it so the logos change and stay until next click
int zxc = 650;
int asd = 770;
int value = 200;
//above are variables I set to allow myself to use easier inputs for numbers I'll use a lot in this code
//intial setup
void setup(){
 size(800,800);
  background(30,16,118);
}
 //setup/background for loop 
void draw(){
   background(0);
    rectMode(CORNERS);
    fill(#FCF9D9);
    ellipseMode(CENTER);
    ellipse(800,0,300,300);
    fill(120);
    rectMode(CORNERS);
    rect(0,600,100,200);
    rect(100,490,160,600);
    rect(180,309,250,600);
    rect(260,343,400,600);
    rect(400,200,500,600);
    rect(504,82,540,600);
    rect(550,403,600,600);
    rect(600,595,605,600);
    rect(605,200,695,600);
    rect(700,400,790,600);
    rect(790,583,795,600);
    fill(255);
     noStroke();
     rect(0,600, 800,800);
     fill(200);
     rect(0,620,800,800);
     
     
   
     //static matching word
     strokeWeight(5);
     stroke(value);
     //t
     line(30,zxc,66,zxc);
     line(48,zxc,48,asd);
     //r
     line(86,zxc,86,asd);
      noFill();
      arc(86,680,72,60,-PI/2,PI/2);
     line(86,710,122,asd);
     //a
     line(160,zxc,142,asd);
     line(160,zxc,178,asd);
     line(151,710,169,710);
     //n
     line(198,zxc,198,asd);
     line(198,zxc,234,asd);
     line(234,zxc,234,asd);
     //s 
     line(254,zxc,290,zxc);
     line(254,zxc,254,710);
     line(254,710,290,710);
     line(290,710,290,asd);
     line(254,asd,290,asd);
     //f
     line(310,zxc,310,asd);
     line(310,zxc,346,zxc);
     line(310,710,346,710);
     //o
     ellipse(384,710,36,120);
     //r
     line(422,zxc,422,asd);
     noFill();
     arc(422,680,72,60,-PI/2,PI/2);
     line(422,710,458,asd);
     //m
     line(478,zxc,478,asd);
     line(478,zxc,496,asd);
     line(496,asd,514,zxc);
     line(514,zxc,514,asd);
     //e
     line(534,zxc,534,asd);
     line(534,zxc,570,zxc);
     line(534,710,570,710);
     line(534,asd,570,asd);
     //r
      line(590,zxc,590,asd);
      arc(590,680,72,60,-PI/2,PI/2);
      line(590,710,626,asd);
      //s
      line(646,zxc,682,zxc);
      line(646,zxc,646,710);
      line(646,710,682,710);
      line(682,710,682,asd);
      line(682,asd,646,asd);
      //!!!
      line(702,zxc,702,750);
      point(702,asd);
      line(722,zxc,722,750);
      point(722,asd);
      line(742,zxc,742,750);
      point(742,asd);
 
    //below is the clickable logos
    noStroke();
    rectMode(CENTER);
    fill(220,0,0);
    if (pressState == 0){
    //autobot
      strokeWeight(10);
stroke(255);
fill(255,0,0);
beginShape();
vertex(mouseX-25,mouseY+100);
vertex(mouseX+25,mouseY+100);//bottom
vertex(mouseX+25,mouseY);//right rise
vertex(mouseX+38,mouseY-80);//right side angle
vertex(mouseX, mouseY-63);//midpoint of top
vertex(mouseX-38, mouseY-80);//fall back down
vertex(mouseX-25,mouseY);
vertex(mouseX-25,mouseY+100);
endShape();

beginShape();
vertex(mouseX,mouseY-72);//bottom point
vertex(mouseX+125,mouseY-125);
vertex(mouseX+137,mouseY-175);
vertex(mouseX,mouseY-180);//midpoint
vertex(mouseX-137,mouseY-175);
vertex(mouseX-125,mouseY-125);
vertex(mouseX,mouseY-72);
endShape();

beginShape();
vertex(mouseX-34,mouseY);
vertex(mouseX-47,mouseY-85);
vertex(mouseX-134,mouseY-125);
vertex(mouseX-146,mouseY-180);
vertex(mouseX-200,mouseY-185);
vertex(mouseX-175,mouseY-50);
vertex(mouseX-112,mouseY-10);
vertex(mouseX-34,mouseY);
endShape();

beginShape();
vertex(mouseX+34,mouseY);
vertex(mouseX+47,mouseY-85);
vertex(mouseX+134,mouseY-125);
vertex(mouseX+146,mouseY-180);
vertex(mouseX+200,mouseY-185);
vertex(mouseX+175,mouseY-50);
vertex(mouseX+112,mouseY-10);
vertex(mouseX+34,mouseY);
endShape();

beginShape();
vertex(mouseX-163,mouseY-32);
vertex(mouseX-121,mouseY-5);
vertex(mouseX-121,mouseY+17);
vertex(mouseX-87,mouseY+37);
vertex(mouseX-87,mouseY+163);
vertex(mouseX-153,mouseY+113);
vertex(mouseX-163,mouseY-32);
endShape();

beginShape();
vertex(mouseX+163,mouseY-32);
vertex(mouseX+121,mouseY-5);
vertex(mouseX+121,mouseY+17);
vertex(mouseX+87,mouseY+37);
vertex(mouseX+87,mouseY+163);
vertex(mouseX+153,mouseY+113);
vertex(mouseX+163,mouseY-32);
endShape();

beginShape();
vertex(mouseX-30,mouseY+10);
vertex(mouseX-30,mouseY+100);
vertex(mouseX+30,mouseY+100);
vertex(mouseX+30,mouseY+10);
vertex(mouseX+83,mouseY+34);
vertex(mouseX+83,mouseY+167);
vertex(mouseX+58,mouseY+190);
vertex(mouseX+30,mouseY+138);
vertex(mouseX-30,mouseY+138);
vertex(mouseX-58,mouseY+190);
vertex(mouseX-83,mouseY+167);
vertex(mouseX-83,mouseY+34);
vertex(mouseX-30,mouseY+10);
endShape();

beginShape();
vertex(mouseX-54,mouseY+192);
vertex(mouseX+54,mouseY+192);
vertex(mouseX+28,mouseY+136);
vertex(mouseX-28,mouseY+136);
vertex(mouseX-56,mouseY+185);
endShape();

fill(255);
beginShape();
vertex(mouseX-30,mouseY+10);
vertex(mouseX-83,mouseY+34);
vertex(mouseX-121,mouseY+17);
vertex(mouseX-121,mouseY-5);
vertex(mouseX-30,mouseY+10);
endShape();

beginShape();
vertex(mouseX+30,mouseY+10);
vertex(mouseX+83,mouseY+34);
vertex(mouseX+121,mouseY+17);
vertex(mouseX+121,mouseY-5);
vertex(mouseX+30,mouseY+10);
endShape();

triangle(mouseX,mouseY-120,mouseX-40,mouseY-140,mouseX+40,mouseY-140);
line(mouseX-150,mouseY-100,mouseX-75,mouseY-63);
line(mouseX-150,mouseY-75,mouseX-75,mouseY-38);
line(mouseX+150,mouseY-100,mouseX+75,mouseY-63);
line(mouseX+150,mouseY-75,mouseX+75,mouseY-38);
noStroke();
    }
    if (pressState == 1){
      rectMode(CENTER);
       strokeWeight(5);
  stroke(255);
  fill(186,96,211);
  beginShape();
  vertex(mouseX+13,mouseY-6);
  vertex(mouseX+33,mouseY-33);
  vertex(mouseX+58,mouseY-181);
  vertex(mouseX+25,mouseY-125);
  vertex(mouseX-25,mouseY-125);
  vertex(mouseX-58,mouseY-181);
  vertex(mouseX-33,mouseY-33);
  vertex(mouseX-13,mouseY-6);
  vertex(mouseX+13,mouseY-6);
endShape();

beginShape();
vertex(mouseX,mouseY+33);
vertex(mouseX+33,mouseY-13);//first corner
vertex(mouseX+119,mouseY-33);//first indent point
vertex(mouseX+125,mouseY-57);//point above first
vertex(mouseX+57,mouseY-39);//first out strecth
vertex(mouseX+60,mouseY-56);//above first outstretch
vertex(mouseX+125,mouseY-75);//2nd indent
vertex(mouseX+125,mouseY-93);//above 2nd indent
vertex(mouseX+62,mouseY-75);//2nd outstretch
vertex(mouseX+69,mouseY-109);//point above 2nd outstretch
vertex(mouseX+132,mouseY-125);//corner before right tip
vertex(mouseX+175,mouseY-200);//right tip
vertex(mouseX+154,mouseY-43);//drop from right corner
vertex(mouseX,mouseY+175);//bottom
vertex(mouseX-154,mouseY-43);//drom from left corner
vertex(mouseX-175,mouseY-200);//left tip
vertex(mouseX-132,mouseY-125);//corner before left tip
vertex(mouseX-69,mouseY-109);//point above 3rd outstretch
vertex(mouseX-62,mouseY-75);//3rd outstretch
vertex(mouseX-125,mouseY-93);//above 3rd indent
vertex(mouseX-125,mouseY-75);//3rd indent
vertex(mouseX-60,mouseY-56);//above 4th outstretch
vertex(mouseX-57,mouseY-39);//4th outstretch
vertex(mouseX-125,mouseY-57);//point above fourth
vertex(mouseX-119,mouseY-33);//fourth indent point
vertex(mouseX-33,mouseY-13);//last corner
vertex(mouseX,mouseY+33);//bottom
endShape();

triangle(mouseX+150,mouseY-12,mouseX+25,mouseY+169,mouseX+131,mouseY+100);
triangle(mouseX-150,mouseY-12,mouseX-25,mouseY+169,mouseX-131,mouseY+100);

fill(255);
triangle(mouseX-81,mouseY,mouseX-15,mouseY+31,mouseX-31,mouseY+65);
triangle(mouseX+81,mouseY,mouseX+15,mouseY+31,mouseX+31,mouseY+65);
triangle(mouseX,mouseY-43,mouseX+19,mouseY-87,mouseX-19,mouseY-87);
noStroke();
    }
}

 //below is the keypress (it will be a word)
 void keyPressed(){
  if (value == 200){   
     value = 1;
    }else{
    value = 200;
      }   
}  
 //this is what changes the shape; the modulo (%) it what the number is dividing by; 
 //when the next number added by 1 (first pressState) is added to a consececutive number,
 // the modulo then divides that number by 2 and and the remainder will be the shape, according to the variables set.   
void mousePressed(){
  pressState=pressState + 1;
  pressState=(pressState % 2);
 }
