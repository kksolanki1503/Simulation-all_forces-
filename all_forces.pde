Particle[] obj;


void setup()
{
  size(640,480);
  obj = new Particle[5];
  for(int i =0; i< obj.length;i++)
  {
    obj[i] = new Particle();
  }

}

void draw()
{    background(0);
    
  for(int i =0;i<obj.length;i++){
    obj[i].update();
    obj[i].logic();
  }
//obj.applyforce(obj.fic);
}
