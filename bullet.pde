class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getmyXspeed();
    myYspeed = bob.getmyYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate(.6);
  }
  public void show(){
    fill(255);
    ellipse ((float)myCenterX, (float)myCenterY, 10,10);
  }
 public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getPointDirection(){return myPointDirection;}
  public double getmyXspeed(){return myXspeed;}
  public double getmyYspeed(){return myYspeed;}
}
