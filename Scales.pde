void setup()
{
  size(400, 400);
  background(50);
  strokeWeight(3);
  scalesGen();
}

boolean b = false;
int shade = 90;
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
  fill(0, 0, 10);
  ellipse(x, y, 50, 50);
  fill(0, 0, shade);
  arc(x, y, 50, 50, radians(90), radians(210), OPEN);
  arc(x, y, 50, 50, radians(-30), radians(90), OPEN);
  arc(x + 25, y + 25, 50, 83, radians(179), radians(270), OPEN);
  arc(x - 25, y + 25, 50, 83, radians(-90), radians(1), OPEN);
}
