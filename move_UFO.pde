public class MoveUFO{
  
  float x,y;
  float speed,spy;
  float catch_point;
  color UFO_color;
  
  MoveUFO (
  float _x,
  float _y,
  float _speed,
  float _spy,
  float _catch_point,
  color _UFO_color
  ){
    
    x         = _x;
    y         = _y;
    spy       = _spy;
    speed     = _speed;
    catch_point = _catch_point;
    UFO_color = _UFO_color;
  }
  
  public void UFO(){
    
    float y2 = random(-10,10);
    float x2 = random(-10,10);
    
    
    //this.CatchCarLight();
    
    x = x - speed;
    
    
    if(x > width/2){
      if(night==true) this.Light();
      fill(150);
      rect(x+8-13,y-25,20,20);
      rect(x-5-13,y-20,40,15);
      ellipse(x+3-13,y-5,10,10);
      ellipse(x+25-13,y-5,10,10);
      noFill();
    }
    
    if(x == width/2 && y > 120){ 
      y = y + spy;
      fill(150);
      rect(x+8-13,y-25,20,20);
      rect(x-5-13,y-20,40,15);
      ellipse(x+3-13,y-5,10,10);
      ellipse(x+25-13,y-5,10,10);
      noFill();
    }
    if(y <= 120) speed = 15;
    this.CatchCarLight();
    fill(281,42,89);
    ellipse(x+x2,100+y2,30,30);
    ellipse(x-12+x2,120+y2,20,20);
    ellipse(x+12+x2,120+y2,20,20);
    rect(x-25+x2,100+y2,50,20);
    noFill();
    
    if(x < -200){
      speed = 0;
    }
    
  }
  
  private void CatchCarLight(){
    
   //float catchpoint = random(100,width-100);
   
   if(x == width/2 && y > 120){
    speed = 0;
    noStroke();
    fill(57,96,95,100);
    beginShape(TRIANGLE_STRIP);
     vertex(x,100);
     vertex(width/2+40,GROUND);
     vertex(width/2-40,GROUND);
     endShape();
     strokeWeight(3);
     stroke(0);
   }  
    
  }
  
  private void Light(){
    noStroke();
    fill(55,90,97,150);
    beginShape(TRIANGLE_STRIP);
    vertex(x-20,GROUND-17);
    vertex(x-25,GROUND);
    vertex(x-55,GROUND);
    endShape();
    strokeWeight(3);
    stroke(0);
  }   
   
}
