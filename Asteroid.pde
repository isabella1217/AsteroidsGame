class Asteroid extends Floater{
 private double rotSpeed;
  public Asteroid(){
    corners = 4;
    xCorners = new int[4];
    yCorners = new int[4];
    xCorners[0] = -4;
    yCorners[0] = -4;
    xCorners[1] = -4;
    yCorners[1] = 4;
    xCorners[2] = 4;
    yCorners[2] = 4;
    xCorners[3] = 4;
    yCorners[3] = -4;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myCenterX = (int)Math.random()*251;
    myCenterY = (int)Math.random()*251;
    myXspeed =  Math.random()*2 - 1;
    myYspeed = Math.random()*2 - 1;
    myPointDirection = 0;
    rotSpeed = Math.random()*2 - 1;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getPointDirection(){return myPointDirection;}
  public double getmyXspeed(){return myXspeed;}
  public double getmyYspeed(){return myYspeed;}
}
    
