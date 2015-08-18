public class MoveCars{
  
  float x1;
  float x2;
  float speed1;
  float speed2;
  color car_color;
  
  MoveCars (
  float _x1,float _x2,
  float _speed1,float _speed2,
  color _car_color
  ){
    
    x1         = _x1;
    x2         = _x2;
    speed1     = _speed1;
    speed2     = _speed2;
    car_color = _car_color;
  }
  
  public void Car1(){
    
    x1 = x1 + speed1;
    fill(100);
    rect(x1,GROUND-25,20,20);
    rect(x1-5,GROUND-20,40,15);
    ellipse(x1+3,GROUND-5,10,10);
    ellipse(x1+25,GROUND-5,10,10);
    if(night==true) this.Light1();

    noFill();
      if(x1 >= width+700){
        x1 = -500;
        speed1 = random(5,15);
      }
  }
  
  public void Car2(){
    
    x2 = x2 - speed2;
    fill(160);
    rect(x2,GROUND-25,20,20);
    rect(x2-15,GROUND-20,40,15);
    ellipse(x2-5,GROUND-5,10,10);
    ellipse(x2+17,GROUND-5,10,10);
    if(night==true) this.Light2();
    noFill();
      if(x2 <= -500){
        x2 = width+500;
        speed2 = random(5,15);
      }
  }
  
  private void Light1(){
    fill(55,90,97,150);
    stroke(55,90,97,15);
    beginShape(TRIANGLE_STRIP);
    vertex(x1+38,GROUND-17);
    vertex(x1+45,GROUND);
    vertex(x1+75,GROUND);
    endShape();
    stroke(0);
  }   
  
  private void Light2(){
    fill(55,90,97,150);
    stroke(55,90,97,15);
    beginShape(TRIANGLE_STRIP);
    vertex(x2-15,GROUND-17);
    vertex(x2-25,GROUND);
    vertex(x2-55,GROUND);
    endShape();
    stroke(0);
  }
 
}
