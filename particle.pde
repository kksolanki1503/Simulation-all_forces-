class Particle
{
  PVector pos,vel,acc,force,temp,friction,drag;
  float mass,u,c,speed;
  Particle()
  {
    pos = new PVector(random(width),height/2);
    vel = new PVector(0,0);
    acc = new PVector(0,0);
    force = new PVector(0,1);
    temp = new PVector(0,0);
    mass = random(1,10);
    friction = new PVector(0,0);
    drag = new PVector(0,0);
    u = 0;
  }
  
  void update()
  {
    circle(pos.x,pos.y,mass*3);
    temp = PVector.div(force,mass);
    acc.add(temp);
    
    friction = vel.get();
    friction.normalize();
    u = -.01;
    friction.mult(u);
    acc.add(friction);
    
   
    drag = vel.get();
    drag.normalize();
    c = -0.03;
    speed = vel.mag();
    drag.mult(c*speed*speed);
    acc.add(drag);
    
    
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }
  
  void applied_force(PVector force_name)
  {
    acc.add(force_name);
  }
  
  void logic()
  {
    if (pos.y >height)
    {
      pos.y = height;
      vel.y = vel.y*-1;
    }
  }
}
