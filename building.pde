public class Building{
  
  float x1;
  float speed1;
  float x2;
  float speed2;
  float fwx1,fwx2,fwx3,fwx4,fwx5,fwx6,fwx7,fwx8;
  float fwy1,fwy2,fwy3,fwy4,fwy5,fwy6,fwy7,fwy8;
  float lightx,lighty;
  float r = 105;
  
  Building (
  float _x1,
  float _speed1,
  float _x2,
  float _speed2
  ){
    
    x1     = _x1;
    speed1 = _speed1;
    x2     = _x2;
    speed2 = _speed2;
  }
    
public void TwinTowerBuilding(){
  int building_x1 = 120;
  int building_x2 = 280;
  int building_y1 = GROUND-420;
  
  //ビル本体
  //右ビル
  if(night2==true) fill(60);
  if(first_light1_1==true) fill(80);
  if(first_light1_2==true) fill(100);
  if(first_light2_1==true) fill(120);
  if(first_light2_2==true) fill(140);
  if(noon==true) fill(160);
  if(twilight1_1==true) fill(150);
  if(twilight1_2==true) fill(140);
  if(twilight2_1==true) fill(130);
  if(twilight2_2==true) fill(110);
  if(twilight2_3==true) fill(90);
  if(twilight2_4==true) fill(70);
  rect(building_x2,building_y1+20,120,400);
  //右ビル上部
  rect(building_x2+37,building_y1-15,17,35);
  triangle(building_x2+40,building_y1-15,building_x2+50,building_y1-15,building_x2+45,building_y1-80);
  //左ビル
  rect(building_x1,building_y1,120,420);
  //左ビル上部
  rect(building_x1+25,building_y1-15,35,15);
  rect(building_x1+70,building_y1-30,30,30);
  
  //側面
  //右ビル
  if(night2==true) fill(10);
  if(first_light1_1==true) fill(20);
  if(first_light1_2==true) fill(30);
  if(first_light2_1==true) fill(50);
  if(first_light2_2==true) fill(70);
  if(noon==true) fill(80);
  if(twilight1_1==true) fill(75);
  if(twilight1_2==true) fill(60);
  if(twilight2_1==true) fill(50);
  if(twilight2_2==true) fill(35);
  if(twilight2_3==true) fill(25);
  if(twilight2_4==true) fill(15);
  quad(building_x2,building_y1+20,building_x2-30,building_y1+40,building_x2-30,GROUND,building_x2,GROUND);
  //左ビル
  quad(building_x1,building_y1,building_x1-30,building_y1+20,building_x1-30,GROUND,building_x1,GROUND);
  
  //右ビル窓
  if(night==true) fill(58,48,96,200);
  if(night==false) fill(193,15,97);
  rect(building_x2+5,building_y1+30,110,40);
  for(int i=0;i<7;i++){
    rect(building_x2+6+i*16,building_y1+80,10,250);
  }
  
  //左ビル窓
  if(night==true) fill(58,48,96,200);
  if(night==false) fill(193,15,97);
  rect(building_x1+5,building_y1+10,110,40);
  for(int i=0;i<7;i++){
    rect(building_x1+6+i*16,building_y1+60,10,250);
  }
  
}

//右ビル
public void Building1(){
  int building_x1 = 340;
  int building_y1 = GROUND-300;
  int s = second();

  
  if(s>10 && s<=20) s = s - 10;
  if(s>20 && s<=30) s = s - 20;
  if(s>30 && s<=40) s = s - 30;
  if(s>40 && s<=50) s = s - 40;
  if(s>50 && s<60) s = s - 50;
  //ビル本体
  if(night2==true) fill(55);
  if(first_light1_1==true) fill(75);
  if(first_light1_2==true) fill(95);
  if(first_light2_1==true) fill(115);
  if(first_light2_2==true) fill(135);
  if(noon==true) fill(155);
  if(twilight1_1==true) fill(145);
  if(twilight1_2==true) fill(135);
  if(twilight2_1==true) fill(125);
  if(twilight2_2==true) fill(105);
  if(twilight2_3==true) fill(85);
  if(twilight2_4==true) fill(65);
  rect(building_x1,building_y1,150,300);
  //右柱
  rect(building_x1+132,building_y1-100,6,100);
  rect(building_x1+130,building_y1-40,10,40);
  //左柱
  rect(building_x1+112,building_y1-80,6,80);
  rect(building_x1+110,building_y1-30,10,30);
  
  //点滅ライト
  if(night==true){
  noStroke();
  fill(81,71,s*5+40,150);
  ellipse(building_x1+115,building_y1-80,10,10);
  ellipse(building_x1+135,building_y1-100,10,10);
  noFill();
  strokeWeight(3);
  stroke(0);
  }
  //ビル側面
  if(night2==true) fill(10);
  if(first_light1_1==true) fill(20);
  if(first_light1_2==true) fill(30);
  if(first_light2_1==true) fill(50);
  if(first_light2_2==true) fill(70);
  if(noon==true) fill(80);
  if(twilight1_1==true) fill(75);
  if(twilight1_2==true) fill(60);
  if(twilight2_1==true) fill(50);
  if(twilight2_2==true) fill(35);
  if(twilight2_3==true) fill(25);
  if(twilight2_4==true) fill(15);
  quad(building_x1+150,building_y1,building_x1+180,building_y1+20,building_x1+180,GROUND,building_x1+150,GROUND);
  
  //窓
  if(night==true) fill(350);
  if(night==false) fill(193,15,97);
  for(int i=0;i<4;i++){
    rect(building_x1+5+i*35,building_y1+10,30,20);
  }
  for(int i=0;i<4;i++){
    rect(building_x1+5+i*35,building_y1+45,30,20);
  }
  for(int i=0;i<4;i++){
    rect(building_x1+5+i*35,building_y1+80,30,20);
  }
  for(int i=0;i<4;i++){
    rect(building_x1+5+i*35,building_y1+115,30,20);
  }
  for(int i=0;i<4;i++){
    rect(building_x1+5+i*35,building_y1+150,30,20);
  }
  for(int i=0;i<4;i++){
    rect(building_x1+5+i*35,building_y1+185,30,20);
  }
}

//左ビル
public void Building2(){
  int building_x1 = 50;
  int building_y1 = GROUND-500;
  int s = second();

  
  if(s>10 && s<=20) s = s - 10;
  if(s>20 && s<=30) s = s - 20;
  if(s>30 && s<=40) s = s - 30;
  if(s>40 && s<=50) s = s - 40;
  if(s>50 && s<60) s = s - 50;
  
  if(night2==true) fill(55);
  if(first_light1_1==true) fill(75);
  if(first_light1_2==true) fill(95);
  if(first_light2_1==true) fill(115);
  if(first_light2_2==true) fill(135);
  if(noon==true) fill(155);
  if(twilight1_1==true) fill(145);
  if(twilight1_2==true) fill(135);
  if(twilight2_1==true) fill(125);
  if(twilight2_2==true) fill(105);
  if(twilight2_3==true) fill(85);
  if(twilight2_4==true) fill(65);
  ellipse(building_x1+50,building_y1+30,100,100);
  //正面
  quad(building_x1,building_y1,building_x1+100,building_y1,building_x1+100,GROUND,building_x1,GROUND);
  
  if(night2==true) fill(10);
  if(first_light1_1==true) fill(20);
  if(first_light1_2==true) fill(30);
  if(first_light2_1==true) fill(50);
  if(first_light2_2==true) fill(70);
  if(noon==true) fill(80);
  if(twilight1_1==true) fill(75);
  if(twilight1_2==true) fill(60);
  if(twilight2_1==true) fill(50);
  if(twilight2_2==true) fill(35);
  if(twilight2_3==true) fill(25);
  if(twilight2_4==true) fill(15);
  //左側面
  quad(building_x1,building_y1,building_x1-40,building_y1+15,building_x1-40,GROUND,building_x1,GROUND);
  //右側面
  quad(building_x1+100,building_y1,building_x1+160,building_y1+15,building_x1+160,GROUND,building_x1+100,GROUND);
  
  if(night==true){
  //点滅ライト
  noStroke();
  fill(0,71,s*5+40,150);
  ellipse(building_x1,building_y1,10,10);
  ellipse(building_x1+100,building_y1,10,10);
  ellipse(building_x1-40,building_y1+15,10,10);
  ellipse(building_x1+160,building_y1+15,10,10);
  noFill();
  strokeWeight(3);
  stroke(0);
  }
  //窓
  if(night==true) fill(30,62,96,200);
  if(night==false) fill(193,15,97);
  for(int i=0;i<15;i++){
    rect(building_x1,building_y1+10+i*25,100,15);
  }
  for(int i=0;i<15;i++){
    quad(building_x1,building_y1+10+i*25,building_x1,building_y1+10+i*25+15,building_x1-40,building_y1+10+i*25+30,building_x1-40,building_y1+10+i*25+15);
  }
  for(int i=0;i<15;i++){
    quad(building_x1+100,building_y1+10+i*25,building_x1+100,building_y1+10+i*25+15,building_x1+160,building_y1+10+i*25+30,building_x1+160,building_y1+10+i*25+15);
  }
}

//観覧車
public void FerrisWheel(){
  int angles = second();      //秒と角度を連動
  int s = second();
  int centerx = 480;          //観覧車円のX座標
  int centery = GROUND-140;   //観覧車円のY座標
  float cx1 = centerx;
  float cx2 = centerx;
  float cx3 = centerx;
  float cx4 = centerx;
  float cx5 = centerx;
  float cx6 = centerx;
  float cy1 = GROUND-140;
  float cy2 = GROUND-140;
  float cy3 = GROUND-140;
  float cy4 = GROUND-140;
  float cy5 = GROUND-140;
  float cy6 = GROUND-140;
  

  //観覧車乗り物６つを回転させる
    angles *= 6;
    angles += 60;
    fwx1=cx1+(r*cos(radians(angles)));
    fwy1=cy1+(r*sin(radians(angles)));
    angles += 300;
    fwx2=cx2+(r*cos(radians(angles)));
    fwy2=cy2+(r*sin(radians(angles)));
    angles += 180;
    fwx3=cx3+(r*cos(radians(angles)));
    fwy3=cy3+(r*sin(radians(angles)));
    angles += 120;
    fwx4=cx4+(r*cos(radians(angles)));
    fwy4=cy4+(r*sin(radians(angles)));
    angles += 300;
    fwx5=cx5+(r*cos(radians(angles)));
    fwy5=cy5+(r*sin(radians(angles)));
    angles += 240;
    fwx6=cx6+(r*cos(radians(angles)));
    fwy6=cy6+(r*sin(radians(angles)));
    
    //土台部分
    if(night2==true) fill(70);
    if(first_light1_1==true) fill(90);
    if(first_light1_2==true) fill(110);
    if(first_light2_1==true) fill(130);
    if(first_light2_2==true) fill(150);
    if(noon==true) fill(170);
    if(twilight1_1==true) fill(160);
    if(twilight1_2==true) fill(150);
    if(twilight2_1==true) fill(140);
    if(twilight2_2==true) fill(120);
    if(twilight2_3==true) fill(100);
    if(twilight2_4==true) fill(90);
    rect(centerx-50,GROUND-10,100,10);
    quad(centerx,centery,centerx-50,GROUND-10,centerx-40,GROUND-10,centerx,centery+10);
    quad(centerx,centery,centerx+50,GROUND-10,centerx+40,GROUND-10,centerx,centery+10);
    //観覧車線部分
    
    if(night==false){
      strokeWeight(5);
      noFill();
      ellipse(centerx,centery,r*2,r*2);
      ellipse(centerx,centery,r*2-88,r*2-88);
      fill(80);  
      line(fwx1,fwy1,fwx3,fwy3);
      line(fwx4,fwy4,fwx3,fwy3);
      line(fwx5,fwy5,fwx6,fwy6);
      line(fwx1,fwy1,fwx4,fwy4);
      line(fwx2,fwy2,fwx5,fwy5);
      line(fwx2,fwy2,fwx6,fwy6);
      strokeWeight(2);
      noFill();
      strokeWeight(2.5);
      stroke(355,78,96);
      noFill();
      ellipse(centerx,centery,r*2,r*2);
      ellipse(centerx,centery,r*2-88,r*2-88);
      fill(80);  
      line(fwx1,fwy1,fwx3,fwy3);
      line(fwx4,fwy4,fwx3,fwy3);
      line(fwx5,fwy5,fwx6,fwy6);
      line(fwx1,fwy1,fwx4,fwy4);
      line(fwx2,fwy2,fwx5,fwy5);
      line(fwx2,fwy2,fwx6,fwy6);
      strokeWeight(2);
      noFill();
    }
    if(night==true){
      strokeWeight(5);
      noFill();
      ellipse(centerx,centery,r*2,r*2);
      ellipse(centerx,centery,r*2-88,r*2-88);
      fill(80);  
      line(fwx1,fwy1,fwx3,fwy3);
      line(fwx4,fwy4,fwx3,fwy3);
      line(fwx5,fwy5,fwx6,fwy6);
      line(fwx1,fwy1,fwx4,fwy4);
      line(fwx2,fwy2,fwx5,fwy5);
      line(fwx2,fwy2,fwx6,fwy6);
      strokeWeight(2);
      noFill();
      stroke(0+s*6,53,96,180);
      ellipse(centerx,centery,r*2,r*2);
      ellipse(centerx,centery,r*2-88,r*2-88);
      fill(100);  
      line(fwx1,fwy1,fwx3,fwy3);
      line(fwx4,fwy4,fwx3,fwy3);
      line(fwx5,fwy5,fwx6,fwy6);
      line(fwx1,fwy1,fwx4,fwy4);
      line(fwx2,fwy2,fwx5,fwy5);
      line(fwx2,fwy2,fwx6,fwy6);
      strokeWeight(3);
      stroke(0);
    }
    strokeWeight(3);
    stroke(0);
    
    //乗り物部分
    fill(100);
    ellipse(fwx1,fwy1,25,25);
    ellipse(fwx2,fwy2,25,25);
    ellipse(fwx3,fwy3,25,25);
    ellipse(fwx4,fwy4,25,25);
    ellipse(fwx5,fwy5,25,25);
    ellipse(fwx6,fwy6,25,25);
    rectMode(CENTER);
    //乗り物の窓部分
    if(night==true) fill(55,90,97,150);
    if(night==false) fill(55,16,98,200);
    rect(fwx1,fwy1,15,10);
    rect(fwx2,fwy2,15,10);
    rect(fwx3,fwy3,15,10);
    rect(fwx4,fwy4,15,10);
    rect(fwx5,fwy5,15,10);
    rect(fwx6,fwy6,15,10);
    //文字盤部分
    fill(80);
    rect(centerx,centery,90,60);
    rectMode(CORNER);
    
    fill(40,87,98);
    if(s>=10) text(s,centerx-40,centery+25);
    if(s<10){
      text("0",centerx-40,centery+25);
      text(s,centerx,centery+25);
    }
    
}

  //東京タワー
  public void TokyoTower(){

    fill(300);
    triangle(width/2,GROUND-570,width/2-5,GROUND-500,width/2+5,GROUND-500);                        //頂上
    fill(0,37,59);
    quad(width/2-10,GROUND-500,width/2+10,GROUND-500,width/2+15,GROUND-470,width/2-15,GROUND-470); //上から2番目
    fill(300);
    quad(width/2-20,GROUND-470,width/2+20,GROUND-470,width/2+20,GROUND-420,width/2-20,GROUND-420); //上から3番目

    fill(80);
    quad(width/2-95,GROUND-330,width/2+95,GROUND-330,width/2+95,GROUND-250,width/2-95,GROUND-250); //文字盤部分
    fill(0,37,59);
    quad(width/2+100,GROUND,width/2+80,GROUND,width/2+40,GROUND-70,width/2+83,GROUND-70);
    quad(width/2-100,GROUND,width/2-80,GROUND,width/2-40,GROUND-70,width/2-83,GROUND-70);
    quad(width/2+83,GROUND-70,width/2-83,GROUND-70,width/2-79,GROUND-90,width/2+79,GROUND-90);
    quad(width/2+50,GROUND-90,width/2+35,GROUND-150,width/2+64,GROUND-150,width/2+79,GROUND-90);
    quad(width/2-50,GROUND-90,width/2-35,GROUND-150,width/2-64,GROUND-150,width/2-79,GROUND-90);
    quad(width/2-64,GROUND-150,width/2+64,GROUND-150,width/2+60,GROUND-170,width/2-60,GROUND-170);
    quad(width/2+40,GROUND-170,width/2+25,GROUND-230,width/2+45,GROUND-230,width/2+60,GROUND-170);
    quad(width/2-40,GROUND-170,width/2-25,GROUND-230,width/2-45,GROUND-230,width/2-60,GROUND-170);
    quad(width/2-45,GROUND-230,width/2+45,GROUND-230,width/2+40,GROUND-250,width/2-40,GROUND-250);
    
    quad(width/2-35,GROUND-330,width/2-15,GROUND-420,width/2-3,GROUND-420,width/2-23,GROUND-330);
    quad(width/2+35,GROUND-330,width/2+15,GROUND-420,width/2+3,GROUND-420,width/2+23,GROUND-330);
    quad(width/2-35,GROUND-330,width/2+35,GROUND-330,width/2+32,GROUND-345,width/2-32,GROUND-345);
    quad(width/2-27,GROUND-365,width/2+27,GROUND-365,width/2+24,GROUND-380,width/2-24,GROUND-380);
    quad(width/2-15,GROUND-420,width/2+15,GROUND-420,width/2+18,GROUND-405,width/2-18,GROUND-405);
    
    this.Clock();
    //東京タワーのライトメソッド呼び出し
    if(night==true) this.TowerLight1();
    if(night==true)this.TowerLight2();
    
    
  }
  
  //橋
  public void Bridge(){
    int Broad = GROUND-120;
    int s = second();

    if(s>10 && s<=20) s = s - 10;
    if(s>20 && s<=30) s = s - 20;
    if(s>30 && s<=40) s = s - 30;
    if(s>40 && s<=50) s = s - 40;
    if(s>50 && s<60) s = s - 50;
    
    
    //ライト
    if(night==true){
      for(int light_i=1;light_i<30;light_i++){
        noStroke();
        fill(191,51,96,100);
        ellipse(width/2+light_i*50,Broad-5,13,13); 
      }
    }
    strokeWeight(2.7);
    stroke(0);
    //柱１右ケーブル(上から)
    line(width/2+170,GROUND-270,width/2+400,Broad);
    line(width/2+170,GROUND-260,width/2+375,Broad);
    line(width/2+170,GROUND-250,width/2+350,Broad);
    line(width/2+170,GROUND-240,width/2+325,Broad);
    line(width/2+170,GROUND-230,width/2+300,Broad);
    line(width/2+170,GROUND-220,width/2+275,Broad);
    line(width/2+170,GROUND-210,width/2+250,Broad);
    line(width/2+170,GROUND-200,width/2+225,Broad);
    //柱１左ケーブル(上から)
    line(width/2+170,GROUND-270,width/2-60,Broad);
    line(width/2+170,GROUND-260,width/2-35,Broad);
    line(width/2+170,GROUND-250,width/2-10,Broad);
    line(width/2+170,GROUND-240,width/2+15,Broad);
    line(width/2+170,GROUND-230,width/2+40,Broad);
    line(width/2+170,GROUND-220,width/2+65,Broad);
    line(width/2+170,GROUND-210,width/2+90,Broad);
    line(width/2+170,GROUND-200,width/2+115,Broad);
    //柱２左ケーブル(上から)
    line(width/2+420,Broad,width/2+660,GROUND-270);
    line(width/2+445,Broad,width/2+660,GROUND-260);
    line(width/2+470,Broad,width/2+660,GROUND-250);
    line(width/2+495,Broad,width/2+660,GROUND-240);
    line(width/2+520,Broad,width/2+660,GROUND-230);
    line(width/2+545,Broad,width/2+660,GROUND-220);
    line(width/2+570,Broad,width/2+660,GROUND-210);
    line(width/2+595,Broad,width/2+660,GROUND-200);
    strokeWeight(2);
    //橋道路部分
    if(night2==true) fill(50);
    if(first_light1_1==true) fill(60);
    if(first_light1_2==true) fill(75);
    if(first_light2_1==true) fill(90);
    if(first_light2_2==true) fill(105);
    if(noon==true) fill(130);
    if(twilight1_1==true) fill(140);
    if(twilight1_2==true) fill(130);
    if(twilight2_1==true) fill(110);
    if(twilight2_2==true) fill(90);
    if(twilight2_3==true) fill(70);
    if(twilight2_4==true) fill(60);
    rect(width/2,Broad,width+50,7);
    rect(width/2,Broad+15,width,7);
    //左柱
    quad(width/2+155,GROUND,width/2+162,GROUND-290,width/2+178,GROUND-290,width/2+185,GROUND);
    rect(width/2+145,GROUND-15,50,15);
    if(night==true){
    //柱ライト
    noStroke();
    fill(0,71,s*5+40,150);
    ellipse(width/2+162,GROUND-290,8,8);
    ellipse(width/2+178,GROUND-290,8,8);
    }

  }
  
  //東京タワーのライト右側
  private void TowerLight1(){
    x1 = x1 + speed1;
    
    fill(55,90,97,150);
    stroke(55,90,97,15);
    triangle(width/2+100,GROUND,x1,0,x1+35,0);
    stroke(0);
    
    if(x1 >= width/2+250 || x1 <= width/2-100) speed1 = -speed1;
    
  }
  //東京タワーのライト左側
  private void TowerLight2(){
    x2 = x2 + speed2;
    
    fill(55,90,97,150);
    stroke(55,90,97,15);
    triangle(width/2-100,GROUND,x2,0,x2-35,0);
    stroke(0);
    
    if(x2 <= width/2-250 || x2 >= width/2+100) speed2 = -speed2;
    
  } 
  
  public void Lamp(){
   int xlamp = 0;

   for(int lamp_i=0;lamp_i<7;lamp_i++){
     if(night2==true) fill(70);
     if(first_light1_1==true) fill(90);
     if(first_light1_2==true) fill(110);
     if(first_light2_1==true) fill(130);
     if(first_light2_2==true) fill(150);
     if(noon==true) fill(170);
     if(twilight1_1==true) fill(160);
     if(twilight1_2==true) fill(150);
     if(twilight2_1==true) fill(140);
     if(twilight2_2==true) fill(120);
     if(twilight2_3==true) fill(100);
     if(twilight2_4==true) fill(90);
     rect(xlamp+lamp_i*200,GROUND-60,6,60);
     rect(xlamp-6+lamp_i*200,GROUND-59,18,7);
     if(night==true) fill(55,90,97,150);
     if(night==false) fill(193,15,97,150);
     ellipse(xlamp+3+lamp_i*200,GROUND-70,23,23);
     noFill();
   }

  }
  
  private void Clock(){
    int s = second();
    int m = minute();
    int h = hour();
      
    fill(360);
    if(h >=10) text(h,width/2-90,GROUND-264);
    if(h <10){
      text(h,width/2-50,GROUND-264);
      text("0",width/2-90,GROUND-264);
    }
    text(":",width/2-8,GROUND-270);
    if(m >= 10) text(m,width/2+10,GROUND-264);
    if(m < 10){
      text("0",width/2+13,GROUND-264);
      text(m,width/2+50,GROUND-264);
    }
    noFill();
    
  }
  
}
