
class Asteroid extends Floater {
  protected double rotSpeed;
  public Asteroid(){
    rotSpeed=(int)(Math.random()*3)-1;
   corners=6;
   xCorners= new int[]{-11,7,13,6,-11,-5};
   yCorners= new int[]{-8,-8,0,10,8,0};
   myColor=255;
   myCenterX=(int)(Math.random()*500);
   myCenterY=(int)(Math.random()*500);
   myXspeed=(int)(Math.random()*3)-2;
   myYspeed=(int)(Math.random()*3)-2;
   myPointDirection=(int)(Math.random()*360);

  }
  public void move(){
   turn(rotSpeed);
   super.move();
  }

}
