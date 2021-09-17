void setup()
{
  size(400, 400);
  background(50);
  strokeWeight(3);
  colorMode(HSB, 100, 100, 100);
  scalesGen();
}

boolean b = false;
int shade = 80;
void scalesGen()
{
makeScale(250, 250);
  /*for(int y = 500; y > -80; y -= 30)
  {
    shade -= 100/21;
    if(b == true)
      for(int x = -50; x < 450; x += 50)
      {
        makeScale(x, y);
      }
     if(b == false)
      for(int x = -75; x < 450; x += 50)
      {
        makeScale(x, y);
      }
     if(b == false) b = true;
     else b = false;
  }*/
}

void makeScale(int x, int y)
{
  fill(0, 0, shade);
  ellipse(x, y, 50, 50);
  noFill();
  bezier(x - 25, y - 25, x, y, x, y, x, y + 25);
  bezier(x + 25, y - 25, x, y, x, y, x, y + 25);
}
