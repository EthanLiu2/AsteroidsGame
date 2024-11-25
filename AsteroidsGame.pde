Star[] Sky= new Star[500];
Spaceship c= new Spaceship();
public void setup() 
{
  size(500,500);
  for(int i=0;i<Sky.length;i++){
  Sky[i]= new Star();
  }
}
public void draw() 
{
  background(0);
  c.move();
  c.show();
  
  for(int i=0;i<Sky.length;i++){
  Sky[i].show();
  }
}
public void keyPressed(){
  if(key == 'h'){
     c.myXspeed=0;
     c.myYspeed=0;
     c.myCenterX=(int)(Math.random()*500);
     c.myCenterY=(int)(Math.random()*500);
     c.myPointDirection=(int)(Math.random()*360);
  }
  if(key=='a'){
    c.turn(-10);
  }
  if(key=='d'){
  c.turn(10);
  }
  if(key=='w'){
  c.accelerate(0.5);
  }
  if(key=='s'){
  c.accelerate(-0.5);
  }
}
