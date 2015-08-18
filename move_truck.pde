public class MoveTruck{
  
  float x1;
  float x2;
  float speed1;
  float speed2;
  color car_color;
  
  MoveTruck (
  float _x1,float _x2,
  float _speed1,float _speed2,
  color _car_color
  ){
    
    x1         = _x1;
    x2         = _x2;
    speed1      = _speed1;
    speed2      = _speed2;
    car_color  = _car_color;
  }
  
  public void Truck1(){
    
    x1 = x1 + speed1;
    fill(130);
    rect(x1,GROUND-10,70,5);
    rect(x1,GROUND-40,45,30);
    rect(x1+50,GROUND-35,20,25);
    ellipse(x1+5,GROUND-5,10,10);
    ellipse(x1+18,GROUND-5,10,10);
    ellipse(x1+65,GROUND-5,10,10);
    if(night==true) this.Light1();
    noFill();
      if(x1 >= width+800){
        x1 = -500;
        speed1 = random(5,15);
      }
  }
 
 public void Truck2(){
   
      x2 = x2 - speed2;
      
      fill(250);
      rect(x2,GROUND-30,25,25);
      rect(x2,GROUND-20,55,15);
      ellipse(x2+7,GROUND-5,10,10);
      ellipse(x2+45,GROUND-5,10,10);
      if(night==true) this.Light2();
      noFill();
      
      if(x2 <= -400){
        x2 = width+600;
        speed2 = random(5,15);
      }
    
  }
    
  private void Light1(){
    fill(55,90,97,150);
    stroke(55,90,97,15);
    beginShape(TRIANGLE_STRIP);
    vertex(x1+74,GROUND-17);
    vertex(x1+85,GROUND);
    vertex(x1+115,GROUND);
    endShape();
    stroke(0);
  }     
 
  private void Light2(){
    fill(55,90,97,150);
    stroke(55,90,97,15);
    beginShape(TRIANGLE_STRIP);
    vertex(x2-4,GROUND-17);
    vertex(x2-15,GROUND);
    vertex(x2-45,GROUND);
    endShape();
    stroke(0);
  }     
 
}
