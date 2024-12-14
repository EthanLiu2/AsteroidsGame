Star[] Sky= new Star[500];
Spaceship c= new Spaceship();
ArrayList <Asteroid> Rock= new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
public void setup() 
{
  size(500, 500);
  for (int i=0; i<Sky.length; i++) {
    Sky[i]= new Star();
  }
  for (int i=0; i<5; i++) {
    Rock.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
 
  for (int i=0; i< shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
  }
  c.move();
  c.show();
  for (int i=0; i<Rock.size(); i++) {

    float distance= dist((float)c.getX(), (float)c.getY(), (float)Rock.get(i).getX(), (float)Rock.get(i).getY());
    if (distance<20) {
      Rock.remove(i);
      i--;
    }
  }
  for (int i=shots.size()-1; i>=0; i--) {
    for (int j=Rock.size()-1; j>=0; j--) {
      float distance=dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)Rock.get(j).getX(), (float)Rock.get(j).getY());
      if (distance<20) {
        Rock.remove(j);
        shots.remove(i);
        break;
      }
    }
  }
  for (int i=shots.size()-1; i>=0;i--) {
    if (shots.get(i).getX()>=500) {
      shots.remove(i);
    } else if (shots.get(i).getX()<=0) {
      shots.remove(i);
    } else if (shots.get(i).getY()>=500) {
      shots.remove(i);
    } else if (shots.get(i).getY()<=0){
      shots.remove(i);
  }
}
for (int i=0; i<Rock.size(); i++) {
  Rock.get(i).move();
  Rock.get(i).show();
}
for (int i=0; i<Sky.length; i++) {
  Sky[i].show();
}
}
public void keyPressed() {
  if (key == 'h') {
    c.myXspeed=0;
    c.myYspeed=0;
    c.myCenterX=(int)(Math.random()*500);
    c.myCenterY=(int)(Math.random()*500);
    c.myPointDirection=(int)(Math.random()*360);
  }
  if (key=='a') {
    c.turn(-15     );
  }
  if (key=='d') {
    c.turn(15);
  }
  if (key=='w') {
    c.accelerate(0.5);
  }
  if (key=='s') {
    c.accelerate(-0.5);
  }
  if (key==' ') {
    shots.add(new Bullet(c));
  }
}


