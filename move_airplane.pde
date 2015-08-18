public class MoveAirPlane{
  
  float x;
  float x1;
  float r_x1=random(0,width*1/4);
  float r_x2=random(width*2/4,width*3/4);
  float l_x1=random(width*1/4,width*2/4);
  float l_x2=random(width*3/4,width);
  float y1 = GROUND-520;
  float speed;
  float speed1;
  float r_speed1=random(0.3,1);
  float r_speed2=random(0.3,1);
  float r_speed3=random(1,0.1);
  float l_speed1=random(-1,-0.3);
  float l_speed2=random(-1,-0.3);
  float l_speed3=random(-1,-0.1);
  color airplane_color;
  
  MoveAirPlane (
  float _x,
  float _x1,
  float _speed,
  float _speed1,
  color _airplane_color
  ){
    
    x1         = _x1;
    speed     = _speed;
    speed1     = _speed1;
    airplane_color = _airplane_color;
  }
  
  public void AirPlane(){
    
  x = x + speed;
  
  fill(150);
  ellipse(x+100,GROUND-587,26,26);
  
  fill(300);
  rect(x,GROUND-600,100,26);
  
  beginShape();
  vertex(x+45,GROUND-600);
  vertex(x+75,GROUND-600);
  vertex(x+100,GROUND-620);
  vertex(x+70,GROUND-620);
  endShape(CLOSE);
  
  beginShape();
  vertex(x+40,GROUND-587);
  vertex(x+70,GROUND-587);
  vertex(x+40,GROUND-557);
  vertex(x+10,GROUND-557);
  endShape(CLOSE);
  
  fill(150);
  beginShape();
  vertex(x+10,GROUND-600);
  vertex(x+30,GROUND-600);
  vertex(x+20,GROUND-615);
  vertex(x+10,GROUND-615);
  endShape(CLOSE);
  noFill();
  
  
    if(x >= width+2000){
      x = -2000;
    }
  }
  
  public void Helicopter(){

    x1 = x1 + speed1;
    
    //後骨組
    line(x1,y1+5,x1+35,y1+20);
    line(x1,y1+35,x1+35,y1+20);
    line(x1,y1,x1,y1+30);
    //足
    line(x1-5,y1+20,x1-5,y1+40);
    line(x1+5,y1+20,x1+5,y1+40);
    line(x1-15,y1+40,x1+15,y1+40);
    fill(150,150);
    ellipse(x1+35,y1+20,20,20);
    ellipse(x1,y1,50,10);
    //本体
    fill(120);
    ellipse(x1,y1+20,30,30);
    //窓
    if(night==false) fill(178,20,97,200);
    if(night==true) fill(55,90,97,150);
    arc(x1,y1+20,30,30,radians(180),radians(270));
    //窓枠
    line(x1,y1+5,x1,y1+20);
    line(x1-15,y1+20,x1,y1+20);
    
    if(x1 < -200){
      x1 = random(width+500,width+1000);
      
//      if(y1>=y1-50 && y1<=y1+50) y1 = y1 + random(50,-50);
//      if(y1<470) y1 = y1 + random(50,10);
//      if(y1<570) y1 = y1 + random(-10,-50);
    }
  }
  
  public void Cloud_right(){
    int y1 = GROUND-620;
    int y2 = GROUND-580;
    int y3 = GROUND-620;

    r_x1 = r_x1 + r_speed1;
    r_x2 = r_x2 + r_speed2;

    noStroke();
    if(night2==true) fill(60,200);
    if(first_light1_1==true) fill(90,200);
    if(first_light1_2==true) fill(120,200);
    if(first_light2_1==true) fill(180,200);
    if(first_light2_2==true) fill(240,200);
    if(noon==true) fill(360,200);
    if(twilight1_1==true) fill(320,200);
    if(twilight1_2==true) fill(280,200);
    if(twilight2_1==true) fill(240,200);
    if(twilight2_2==true) fill(200,200);
    if(twilight2_3==true) fill(140,200);
    if(twilight2_4==true) fill(100,200);
    
    //雲１
    ellipse(r_x1,y1,90,40);
    ellipse(r_x1+35,y1+15,60,30);
    
    //雲２
    ellipse(r_x2,y2,90,40);
    ellipse(r_x2+35,y2+15,60,30);
    
    strokeWeight(3);
    stroke(0);
    
    if(r_x1>width+100){
      r_x1 = -100;
      r_speed1 = random(0.1,1);
    }
    
    if(r_x2>width+100){
      r_x2 = -100;
      r_speed2 = random(0.1,1);
    }

  }
  
  public void Cloud_left(){
    int y1_2 = GROUND-550;
    int y2_2 = GROUND-600;
    int y3_2 = GROUND-600;

    l_x1 = l_x1 + l_speed2;
    l_x2 = l_x2 + l_speed2;
    
    noStroke();
    if(night2==true) fill(60,200);
    if(first_light1_1==true) fill(90,200);
    if(first_light1_2==true) fill(120,200);
    if(first_light2_1==true) fill(180,200);
    if(first_light2_2==true) fill(240,200);
    if(noon==true) fill(360,200);
    if(twilight1_1==true) fill(320,200);
    if(twilight1_2==true) fill(280,200);
    if(twilight2_1==true) fill(240,200);
    if(twilight2_2==true) fill(200,200);
    if(twilight2_3==true) fill(140,200);
    if(twilight2_4==true) fill(100,200);
    
    //雲１
    ellipse(l_x1,y1_2,90,40);
    ellipse(l_x1+35,y1_2+15,60,30);
    
    //雲２
    ellipse(l_x2,y2_2,90,40);
    ellipse(l_x2+35,y2_2+15,60,30);
    
    strokeWeight(3);
    stroke(0);
    
    if(l_x1<-100){
      l_x1 = width+100;
      l_speed1 = random(-1,-0.1);
    }
    
    if(l_x2<-100){
      l_x2 = width+100;
      l_speed2 = random(-1,-0.1);
    }
    
    
  }
}
