int X = 1250;  //画面の大きさX
int Y = 750;   //画面の大きさY
int GROUND = Y -100;  //地面のY座標

boolean night = false;
boolean night2 = false;
boolean noon = false;

boolean first_light1_1 = false;
boolean first_light1_2 = false;
boolean first_light2_1 = false;
boolean first_light2_2 = false;

boolean twilight1_1 = false;
boolean twilight1_2 = false;
boolean twilight2_1 = false;
boolean twilight2_2 = false;
boolean twilight2_3 = false;
boolean twilight2_4 = false;

int car_Length = 3;
int bus_Length = 1;
int truck_Length = 2;
int bcar_Length = 5;

MoveCars[] cars = new MoveCars[car_Length];
MoveBus[] bus  = new MoveBus[bus_Length];
MoveTruck[] truck = new MoveTruck[truck_Length];
Bridge[] bcar = new Bridge[bcar_Length];
MoveAirPlane airplane;
MoveUFO UFO;
Building building;



PFont myFont;

void setup(){
  size(X,Y);
  colorMode(HSB,360,100,100);
  background(99);
  smooth();
  strokeWeight(3);
  frameRate(15);
  
  myFont = loadFont("ArialRoundedMTBold-48.vlw");
  textFont(myFont,70);
  
  for(int car_i = 0;car_i < car_Length;car_i++){
    cars[car_i] = new MoveCars(random(-500,width+500),random(-400,width+300),random(5,10),random(5,10),0);
  }
  for(int bus_i = 0;bus_i < bus_Length;bus_i++){
    bus[bus_i] = new MoveBus(random(-500,width+400),random(-200,width+300),random(5,10),random(5,10),0);
  }
  for(int truck_i = 0;truck_i < truck_Length;truck_i++){
    truck[truck_i] = new MoveTruck(random(-500,width+300),random(-600,width+600),random(5,10),random(5,10),0);
  }
  for(int bcar_i = 0;bcar_i < bcar_Length;bcar_i++){
    bcar[bcar_i] = new Bridge(random(width/2,width+300),random(width/2,width+600),random(1.5,4),random(1.5,4));
  }
  airplane = new MoveAirPlane(random(-1000,width+1500),width,5,-3,width);
  UFO = new MoveUFO(X+5,GROUND,10,-6,random(100,width-100),width);
  building = new Building(625,2,625,-2);
}

void draw(){
  
  int h = hour();
  int m = minute();
  int s = second();
  
  //昼
  if(h>=7 && h<=16){
    noon = true;
  }else{
    noon = false;
  }
  //夕方含む夜
  if(h>=17 && h<=23 || h>=0 && h<=6) night = true;
  //夕方含まない夜
  if(h>=19 && h<=23 || h>=0 && h<=4){
    night2 = true;
  }else{
    night2 = false;
  }
  
  //夕方(17時代)
  if(h==17 && m>=0 && m<=30){
    twilight1_1 = true;
  }else{
    twilight1_1 = false;
  }
  if(h==17 && m>30 && m<=59){
    twilight1_2 = true;
  }else{
    twilight1_2 = false;
  }
  //夕方(18時代)
  if(h==18 && m>=0 && m<=15){
    twilight2_1 = true;
  }else{
    twilight2_1 = false;
  }
  if(h==18 && m>15 && m<=30){
    twilight2_2 = true;
  }else{
    twilight2_2 = false;
  }
  if(h==18 && m>30 && m<=45){
    twilight2_3 = true;
  }else{
    twilight2_3 = false;
  }
  if(h==18 && m>45 && m<=59){
    twilight2_4 = true;
  }else{
    twilight2_4 = false;
  }
  
  //明け方(5時代)
  if(h==5 && m>=0 && m<=30){
    first_light1_1 = true;
  }else{
    first_light1_1 = false;
  }
  if(h==5 && m>30 && m<=59){
    first_light1_2 = true;
  }else{
    first_light1_2 = false;
  }
  //明け方(6時代)
  if(h==6 && m>=0 && m<=30){
    first_light2_1 = true;
  }else{
    first_light2_1 = false;
  }
  if(h==6 && m>30 && m<=59){
    first_light2_2 = true;
  }else{
    first_light2_2 = false;
  }
  
  fadeToWhite();

  println(night);
  
  //月
  if(night2==true && noon!=true){
    noStroke();
    fill(58,74,95);
    ellipse(X-130,GROUND-550,100,100);
    fill(223,40,20);
    ellipse(X-160,GROUND-580,100,100);
    strokeWeight(3);
    stroke(0);
  }

  //地面
  fill(0);
  rect(0,GROUND,width,100);
  noFill();

  for(int bcar_i=0;bcar_i < bcar_Length;bcar_i++){ 
    bcar[bcar_i].BridgeCar1();
  }
  for(int bcar_i=0;bcar_i < bcar_Length;bcar_i++){ 
    bcar[bcar_i].BridgeCar2();
  }

  building.Bridge();
  
  strokeWeight(2);
  stroke(30);
  if(night2==true) fill(50);
  if(first_light1_1==true) fill(60);
  if(first_light1_2==true) fill(90);
  if(first_light2_1==true) fill(110);
  if(first_light2_2==true) fill(130);
  if(noon==true) fill(140);
  if(twilight1_1==true) fill(130);
  if(twilight1_2==true) fill(120);
  if(twilight2_1==true) fill(110);
  if(twilight2_2==true) fill(90);
  if(twilight2_3==true) fill(70);
  if(twilight2_4==true) fill(60);
  beginShape();
  vertex(0,GROUND);
  vertex(0,GROUND-300);
  vertex(30,GROUND-300);
  vertex(30,GROUND-350);
  vertex(80,GROUND-350);
  vertex(80,GROUND-330);
  vertex(80,GROUND-330);
  vertex(100,GROUND-330);
  vertex(100,GROUND-200);
  vertex(150,GROUND-200);
  vertex(150,GROUND-450);
  vertex(190,GROUND-450);
  vertex(190,GROUND-400);
  vertex(200,GROUND-400);
  vertex(200,GROUND-250);
  vertex(250,GROUND-250);
  vertex(250,GROUND-350);
  vertex(270,GROUND-350);
  vertex(270,GROUND-370);
  vertex(290,GROUND-370);
  vertex(290,GROUND-420);
  vertex(330,GROUND-420);
  vertex(330,GROUND-330);
  vertex(370,GROUND-330);
  vertex(370,GROUND-270);
  vertex(420,GROUND-270);
  vertex(420,GROUND-180);
  vertex(450,GROUND-180);
  vertex(450,GROUND-210);
  vertex(480,GROUND-210);
  vertex(480,GROUND-220);
  vertex(540,GROUND-220);
  vertex(540,GROUND-210);
  vertex(570,GROUND-210);
  vertex(570,GROUND-270);
  vertex(620,GROUND-270);
  vertex(620,GROUND-220);
  vertex(640,GROUND-220);
  vertex(640,GROUND-210);
  vertex(680,GROUND-210);
  vertex(680,GROUND);


  endShape();
  strokeWeight(3);
  stroke(0);
  
  airplane.AirPlane();
  airplane.Cloud_right();
  airplane.Cloud_left();
  building.Building1();
  building.TokyoTower();
  building.Building2();
  airplane.Helicopter();
  building.TwinTowerBuilding();

  building.FerrisWheel();

  building.Lamp();
  
  for(int car_i = 0 ; car_i < car_Length ; car_i++){ 
    cars[car_i].Car1();
  }
  for(int bus_i=0;bus_i < bus_Length;bus_i++){ 
    bus[bus_i].Bus1();
  }
  for(int truck_i=0;truck_i < truck_Length;truck_i++){ 
    truck[truck_i].Truck1();
  }
  for(int car_i = 0 ; car_i < car_Length ; car_i++){ 
    cars[car_i].Car2();
  }
  for(int bus_i=0;bus_i < bus_Length;bus_i++){ 
    bus[bus_i].Bus2();
  }
  for(int truck_i=0;truck_i < truck_Length;truck_i++){ 
    truck[truck_i].Truck2();
  }
  
  if(m==0 || m==15 || m==30 || m==45) UFO.UFO();
  
}

void fadeToWhite(){
  int h = hour();
  int m = minute();
  int s = second();
  
  //昼
  if(noon==true){
    fill(223,40,120);
    rect(0,0,width,height);
  }
  //夜
  if(night2==true){
    fill(223,40,20);
    rect(0,0,width,height);
  }
  
  //17時夕方①
  if(twilight1_1==true){
    for(int i=0;i<=106;i++){
      noStroke();
      fill(223+i*4,50,100);
      rect(0,-300+10*i,X,10);
      stroke(0);
    }  
  }
  //17時夕方②
  if(twilight1_2==true){
    for(int i=0;i<=86;i++){
      noStroke();
      fill(223+i*4,50,90);
      rect(0,-100+10*i,X,10);
      stroke(0);
    }  
  }
  //18時夕方①
  if(twilight2_1==true){
    for(int i=0;i<=10;i++){
      noStroke();
      fill(223,50,70+i*0.5);
      rect(0,0+10*i,X,10);
      stroke(0);
    } 
    for(int i=0;i<=56;i++){
      noStroke();
      fill(223+i*4,50,75);
      rect(0,100+10*i,X,10);
      stroke(0);
    }  
  }
  //18時夕方②
  if(twilight2_2==true){
    for(int i=0;i<=25;i++){
      noStroke();
      fill(223,50,40+i*0.5);
      rect(0,0+10*i,X,10);
      stroke(0);
    } 
    for(int i=0;i<=46;i++){
      noStroke();
      fill(223+i*4,50,52.5);
      rect(0,250+10*i,X,10);
      stroke(0);
    }  
  }
  //18時夕方③
  if(twilight2_3==true){
    for(int i=0;i<=40;i++){
      noStroke();
      fill(223,50,20+i*0.5);
      rect(0,0+10*i,X,10);
      stroke(0);
    } 
    for(int i=0;i<=46;i++){
      noStroke();
      fill(223+i*4,50,40);
      rect(0,400+10*i,X,10);
      stroke(0);
    }  
  }
  //18時夕方④
  if(twilight2_4==true){
    for(int i=0;i<=55;i++){
      noStroke();
      fill(223,50,10+i*0.5);
      rect(0,0+10*i,X,10);
      stroke(0);
    } 
    for(int i=0;i<=11;i++){
      noStroke();
      fill(223+i*4,50,35);
      rect(0,550+10*i,X,10);
      stroke(0);
    }  
  }
  
  //5時明け方①
  if(first_light1_1==true){
    for(int i=0;i<=66;i++){
      noStroke();
      fill(223,50,10+i*0.3);
      rect(0,0+10*i,X,10);
      stroke(0);
    } 
  }
  //5時明け方②
  if(first_light1_2==true){
    for(int i=0;i<=66;i++){
      noStroke();
      fill(223,50,10+i*0.8);
      rect(0,0+10*i,X,10);
      stroke(0);
    } 
  }
  //6時明け方①
  if(first_light2_1==true){
    for(int i=0;i<=66;i++){
      noStroke();
      fill(223,50,25+i*1);
      rect(0,0+10*i,X,10);
      stroke(0);
    } 
  }
  //6時明け方②
  if(first_light2_2==true){
    for(int i=0;i<=66;i++){
      noStroke();
      fill(223,50,50+i*1);
      rect(0,0+10*i,X,10);
      stroke(0);
    } 
  }
  
}
