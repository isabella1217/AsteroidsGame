Spaceship bob = new Spaceship();
Star[]space = new Star[200];
ArrayList<Asteroid> joe = new ArrayList<Asteroid>();
ArrayList<Bullet> shots = new ArrayList<Bullet>();

public void setup() 
{
  size(500,500);
  for(int i = 0; i<space.length; i++)
  {
    space[i] = new Star();
  }
  for (int i=0; i<10; i++)
  {
    joe.add(new Asteroid());
  }
for (int i=0; i<shots.size(); i++)
 {
  shots.add(new Bullet(bob));
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
  for (int i=0; i<shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
  }
  for (int i =0; i<joe.size(); i++)
  {   
  joe.get(i).show();
  joe.get(i).move();
  }
  
  for (int i=0; i<shots.size(); i++){
   for (int j =0; j<joe.size(); j++)
  {  
  float d = dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)joe.get(j).getX(), (float)joe.get(j).getY());
  if (d<20){
  joe.remove(j);
  shots.remove(i);
  break;
  }
  }
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
  else if (key =='2')
  shots.add(new Bullet(bob));
  
}
