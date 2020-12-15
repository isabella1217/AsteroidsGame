Spaceship bob = new Spaceship();
Star[]space = new Star[200];
ArrayList<Asteroid> joe = new ArrayList<Asteroid>();

public void setup() 
{
  size(500,500);
  for(int i = 0; i<space.length;i++)
  {
    space[i] = new Star();
  }
  for (int i=0; i<10; i++){
    joe.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for (int i =0; i<joe.size(); i++){
    
  joe.get(i).show();
  joe.get(i).move();
  //float d = dist(bob.getX(), bob.getY(), joe.get(i).getX, joe.get(i).getY);
  //if (d<10){
    //joe.remove(i);
  }
  
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
   else if (key =='s')
  bob.accelerate(-0.3);
   else if (key =='1')
  bob.hyperspace();
  
}
