void setup(){
  size(800,800);
  background(0,80,155);
  
  fill(100);
  rectMode(CENTER);
  rect(400,700,900,300);
  //above is the background and grey background 
  
  //ellipse cloud
  stroke(245);
  fill(245);
  ellipseMode(CENTER);
  ellipse(50,50,200,80);
  
  stroke(245);
  fill(245);
  ellipseMode(CENTER);
  ellipse(100,100,200,80);
  
  stroke(245);
  fill(245);
  ellipseMode(CENTER);
  ellipse(45,150,200,80);
  
  stroke(245);
  fill(245);
  ellipseMode(CENTER);
  ellipse(160,75,200,80);
  
  stroke(245);
  fill(245);
  ellipseMode(CENTER);
  ellipse(50,70,200,100);
  
  stroke(245);
  fill(245);
  ellipseMode(CENTER);
  ellipse(50,50,200,80);
  

  //buildings
  stroke(0);
  fill(0);
  rectMode(CORNERS);
  rect(0,550,100,500);
  
   stroke(0);
  fill(0);
  rectMode(CORNERS);
  rect(100,550,175,450);
  
   stroke(0);
  fill(0);
  rectMode(CORNERS);
  rect(175,550,275,350);
  
   stroke(0);
  fill(0);
  rectMode(CORNERS);
  rect(275,550,290,525);
  
   stroke(0);
  fill(0);
  rectMode(CORNERS);
  rect(290,550,390,250);
  
   stroke(0);
  fill(0);
  rectMode(CORNERS);
  rect(390,550,590,400);
  
   stroke(0);
  fill(0);
  rectMode(CORNERS);
  rect(590,550,600,540);
  
   stroke(0);
  fill(0);
  rectMode(CORNERS);
  rect(600,550,670,425);
 
  stroke(0);
  fill(0);
  rectMode(CORNERS);
  rect(670,550,800,290);
  
  //Needle base
  stroke(200);
  fill(200);
  rectMode(CORNERS);
  rect(450,750,700,725);
  
  stroke(200);
  fill(200);
  rectMode(CORNERS);
  rect(500,725,650,700);
  
  //lines going up to middle part of needle
  strokeWeight(7);
  stroke(200);
  fill(200);
  line(520,700,560,400);
  
  strokeWeight(7);
  stroke(200);
  fill(200);
  line(630,700,590,400);
  
  strokeWeight(25);
  stroke(200);
  fill(200);
  line(575,700,575,390);
  
  strokeWeight(4);
  stroke(200);
  fill(200);
  line(501,700,560,380);
  
  strokeWeight(4);
  stroke(200);
  fill(200);
  line(649,700,590,380);
  
  //middle section
  stroke(200);
  fill(200);
  rectMode(CENTER);
  rect(575,370,40,110);
  
  //large middle line on bottom
  strokeWeight(12);
  stroke(200);
  fill(200);
  line(526,590,624,590);
  
  //H lines below low-middle bar
  strokeWeight(8);
  stroke(200);
  fill(200);
  line(516,630,527,630);
  
  strokeWeight(6);
  stroke(200);
  fill(200);
  line(511,670,521,670);
  
  strokeWeight(8);
  stroke(200);
  fill(200);
  line(624,630,634,630);
  
  strokeWeight(6);
  stroke(200);
  fill(200);
  line(629,670,640,670);
  
  //H lines above low-middle bar
  strokeWeight(5);
  stroke(200);
  fill(200);
  line(530,550,537,550);
  
  strokeWeight(5);
  stroke(200);
  fill(200);
  line(613,550,620,550);
  
  strokeWeight(3);
  stroke(200);
  fill(200);
  line(540,505,545,505);
  
  strokeWeight(3);
  stroke(200);
  fill(200);
  line(605,505,610,505);
  
  //lines above lower middle bar
  strokeWeight(6);
  stroke(200);
  fill(200);
  line(555,324,540,235);
  
  strokeWeight(6);
  stroke(200);
  fill(200);
  line(595,324,610,235);
  
  stroke(200);
  fill(200);
  rectMode(CENTER);
  rect(575,282,10,90);
  
  strokeWeight(4);
  stroke(200);
  fill(200);
  line(583,315,592,235);
  
  strokeWeight(4);
  stroke(200);
  fill(200);
  line(567,315,558,235);
  
  //head of the needle
  strokeWeight(10);
  stroke(200);
  fill(200);
  line(500,230,650,230);
  
  strokeWeight(10);
  stroke(200);
  fill(200);
  line(520,229,505,210);
  
  strokeWeight(10);
  stroke(200);
  fill(200);
  line(630,229,645,210);
  
  stroke(200);
  fill(200);
  ellipseMode(CORNERS);
  ellipse(480,209,670,210);
  
  strokeWeight(12);
  stroke(200);
  fill(200);
  line(515,220,635,220);
  
  strokeWeight(16);
  stroke(200);
  fill(200);
  line(498,198,555,185);
  
  strokeWeight(16);
  stroke(200);
  fill(200);
  line(652,198,595,185);
  
  strokeWeight(16);
  stroke(200);
  fill(200);
  line(513,200,637,200);
  
  stroke(200);
  fill(200);
  rectMode(CENTER);
  rect(575,180,30,30);
  
  stroke(200);
  fill(200);
  rectMode(CENTER);
  rect(575,155,.0001,.0001);
  
  strokeWeight(3);
  stroke(200);
  fill(200);
  line(575,150,575,102);
  
  strokeWeight(3);
  stroke(200);
  fill(200);
  line(571,150,575,106);
  
  strokeWeight(3);
  stroke(200);
  fill(200);
  line(579,150,575,106);
  
  strokeWeight(8);
  stroke(200);
  fill(200);
  point(575,144);
  
  strokeWeight(30);
  stroke(200);
  fill(200);
  point(575,200);
  
  strokeWeight(3);
  stroke(200);
  fill(200);
  line(547,165,605,165);
  
  strokeWeight(5);
  stroke(200);
  fill(200);
  line(547,166.5,552,168);
  
  strokeWeight(5);
  stroke(200);
  fill(200);
  line(604,166,599,168);
  
  //point cloud
  strokeWeight(80);
  stroke(245);
  fill(245);
  point(745,32);
  
  strokeWeight(115);
  stroke(245);
  fill(245);
  point(800,12);
  
  strokeWeight(100);
  stroke(245);
  fill(245);
  point(689,0);
}  
