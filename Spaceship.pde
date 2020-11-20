class Spaceship extends Floater  
{ 
  public Spaceship()//constructor
  {
  corners = 3;
  xCorners = new int[corners];
  yCorners = new int[corners]; 
 xCorners[0]=-8;
  yCorners[0]=-8;
  xCorners[1]= 16;
  yCorners[1]=0;
  xCorners[2]=-8;
  yCorners[2]=8;
  myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  myCenterX = myCenterY = 500;
  myXspeed = myYspeed = 0;
  myPointDirection = (int)(Math.random()*360);
  }
   public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
   public void setCenterX(double x) {
    myCenterX = x;
  }
  public void setCenterY(double y) {
    myCenterY = y;
  }
  public void setPointDirection(double z) {
    myPointDirection = z;
  }
  public void hyperspace(){
   setXspeed(0);
   setYspeed(0);
   setCenterX((int)(Math.random()*1000));
   setCenterY((int)(Math.random()*1000));
   setPointDirection((int)(Math.random()*360));
    
  }
    
}
