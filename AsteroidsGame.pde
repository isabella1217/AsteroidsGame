Spaceship bob = new Spaceship();
Star[]space = new Star[200];
public void setup() 
{
  size(1000,1000);
  for(int i = 0; i<space.length;i++)
  {
    space[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i<space.length; i++)
  {
    space[i].show();
  }
 
}
public void keyPressed()
{
  if(key =='a')
  bob.turn(-5);
  else if (key =='d')
  bob.turn(5);
  else if (key =='w')//pushes the ship with rockets in the direction its pointing
  bob.accelerate(0.3);
   else if (key =='s')//pushes the ship with rockets in the direction its pointing
  bob.accelerate(-0.3);
   else if (key =='1')
  bob.hyperspace();
  
}
