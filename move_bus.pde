public class MoveBus{
  
  float x1;
  float x2;
  float speed1;
  float speed2;
  color car_color;
  
  MoveBus (
  float _x1,float _x2,
  float _speed1,float _speed2,
  color _car_color
  ){
    
    x1           = _x1;
    x2           = _x2;
    speed1       = _speed1;
    speed2       = _speed2;
    car_color    = _car_color;
  }
   
  public void Bus1(){
    x1 = x1 + speed1;
    
    fill(300);
    rect(x1,GROUND-35,50,30);
    rect(x1,GROUND-25,60,20);
    ellipse(x1+10,GROUND-5,10,10);
    ellipse(x1+45,GROUND-5,10,10);
    if(night==true) this.Light1();
    noFill();
    
    if(x1 >= width+500){
      x1 = -600;
      speed1 = random(5,15);
    }
  }
    
    public void Bus2(){
      x2 = x2 - speed2;
      
      fill(200);
      rect(x2,GROUND-35,50,30);
      rect(x2-10,GROUND-25,60,20);
      ellipse(x2+5,GROUND-5,10,10);
      ellipse(x2+40,GROUND-5,10,10);
      if(night==true) this.Light2();
      noFill();
      
      if(x2 <= -600){
        x2 = width+500;
        speed2 = random(5,15);
      }
    }
     
  
  
  private void Light1(){
    fill(55,90,97,150);
    stroke(55,90,97,15);
    beginShape(TRIANGLE_STRIP);
    vertex(x1+62,GROUND-20);
    vertex(x1+70,GROUND);
    vertex(x1+100,GROUND);
    endShape();
    stroke(0);
  } 
  
  private void Light2(){
    fill(55,90,97,150);
    stroke(55,90,97,15);
    beginShape(TRIANGLE_STRIP);
    vertex(x2-14,GROUND-20);
    vertex(x2-20,GROUND);
    vertex(x2-50,GROUND);
    endShape();
    stroke(0);
  }   
  
}
