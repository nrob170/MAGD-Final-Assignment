void draw(){
 loop();
//non-moving objects
//golden background
  background(255);
  size(1300,900);
  
  //left side as violet
  noStroke();
  fill(105,0,145);
  rectMode(CORNERS);
  rect(0,0,650,900);
  
  //design; not moveable
  fill(220,170,0);
  arc(650,100,1296,120,-PI/2,PI/2);
  

  fill(0);
  arc(650,100.5,1295,120,1.572,3*PI/2);
  
  fill(0,255,45);
  rectMode(CENTER);
  rect(650,850,1300,100);
  
  strokeWeight(30);
  stroke(0);
  line(0,800,647,800);
  
  noStroke();
  fill(220,170,0);
  rectMode(CORNERS);
  rect(650,800,1300,815.5);
  
  noStroke();
  fill(255);
  rectMode(CORNERS);
  rect(0,783,650,800);
  
   noStroke();
  fill(105,0,145);
  rectMode(CORNERS);
  rect(650,783,1300,800);
  
  triangle(0,55,345,123,650,25);
  fill(255);
  triangle(1300,55,955,123,650,25);
  
  strokeWeight(10);
  stroke(255);
  fill(0,255,45);
  beginShape();
  vertex(100,870);
  vertex(30,500);
  vertex(230,320);
  vertex(190,200);
  vertex(590,700);
  endShape();
  
  strokeWeight(10);
  stroke(105,0,145);
  beginShape();
  vertex(1200,870);
  vertex(1270,500);
  vertex(1170,320);
  vertex(1210,200);
  vertex(710,700);
  endShape();
  
  noStroke();
  fill(220,170,0);
  beginShape();
  vertex(1075,700);
  vertex(800,400);
  vertex(1170,720);
  vertex(950,850);
  endShape();
  
  fill(0);
  beginShape();
  vertex(225,700);
  vertex(500,400);
  vertex(130,720);
  vertex(350,850);
  endShape();
  
  
  
  stroke(105,0,145);
  noFill();
  beginShape();
  vertex(45,732);
  vertex(452,37);
  vertex(300,572);
  vertex(212,543);
  vertex(263,546);
  vertex(12,12);
  endShape();
  
  stroke(255);
  beginShape();
  vertex(1255,732);
  vertex(848,37);
  vertex(1000,572);
  vertex(1088,543);
  vertex(1037,546);
  vertex(1288,12);
  endShape();
  
 
  
  //"face" underneath moveable
  noStroke();
  fill(0);
  rectMode(CORNERS);
  rect(645,250,575,450);
 
  strokeWeight(5); 
  stroke(105,0,145);
  noFill();
  ellipseMode(CENTER);
  ellipse(575,450,35,42);
  ellipse(575,400,52,36);
  ellipse(575,300,100,65);
  ellipse(580,350,60,210);
 
  
  noStroke();
  fill(220,170,0);
  rect(655,300,690,450);
  triangle(655,250,724,295,655,295);
  triangle(695,300,714,300,695,375);
  triangle(695,449,696,392,723,402);
  triangle(695,325,695,379,723,388);
   strokeWeight(10);
   stroke(255);
  fill(0);
  point(703,310);
  strokeWeight(4);
  stroke(0);
  point(704,310);
 
  //Greetings!
  //this press will show up in the green bar in the bottom
if (mousePressed){
  stroke(0); 
  
  } else{
  stroke (0,255,45);
}
  strokeWeight(10);
  line(630,890,670,890);
  line(630,888,630,830);
  line(690,890,730,890);
  line(690,888,690,830);
  line(610,890,570,890);
  line(600,860,570,860);
  line(610,830,570,830);
  line(570,890,570,830);
  line(550,890,550,830);
  line(550,860,510,860);
  line(510,890,510,830);
  noFill();
  ellipseMode(CENTER);
  ellipse(765,860,45,60); 

  //moveable cover
   noStroke();
  fill(105,0,145);
  rectMode(CORNERS);
  rect(mouseX-75,mouseY+100,mouseX-5,mouseY-100);
  fill(255);
  rect(mouseX+5,mouseY-50,mouseX+40,mouseY+100);
  triangle(mouseX+5,mouseY-101,mouseX+75,mouseY-55,mouseX+5,mouseY-55);
  triangle(mouseX+45,mouseY-50,mouseX+65,mouseY-50,mouseX+45,mouseY+25);
  triangle(mouseX+45,mouseY+100,mouseX+45,mouseY+40,mouseX+75,mouseY+50);
  triangle(mouseX+45,mouseY-25,mouseX+45,mouseY+30,mouseX+75,mouseY+40);
  


}
