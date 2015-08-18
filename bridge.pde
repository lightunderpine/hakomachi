public class Bridge{
  
  float x1;
  float x2;
  float speed1;
  float speed2;
  int Broad = GROUND-120;
  
  Bridge(
  float _x1,float _x2,
  float _speed1,float _speed2
  ){
    
    x1           = _x1;
    x2           = _x2;
    speed1       = _speed1;
    speed2       = _speed2;
  }
  //車ライト(左側から右側)
  public void BridgeCar1(){
    
    x1 = x1 + speed1;
    if(night==false){
      fill(150);
      rect(x1,Broad-7,12,7);
    }
    if(night==true){
    noStroke();
    fill(55,53,79,150);
    ellipse(x1,Broad-5,15,15);
    fill(355,65,79,150);
    ellipse(x1-10,Broad-5,15,15);
    strokeWeight(3);
    }
    
    if(x1 > width+100){
      x1 = width/2-100;
      speed1 = random(1,4);
    }
  }
  //車ライト(右側から左側)
  public void BridgeCar2(){
    x2 = x2 - speed2;
    
    if(night==false){
      fill(150);
      rect(x2,Broad-7,12,7);
    }
    if(night==true){
    noStroke();
    fill(55,53,79,150);
    ellipse(x2,Broad-5,15,15);
    fill(355,65,79,150);
    ellipse(x2+10,Broad-5,15,15);
    strokeWeight(2);
    stroke(30);
    }
    
    if(x2 < width/2-100){
      x2 = width+100;
      speed2 = random(1,4);
    }

  }
  
}
    
