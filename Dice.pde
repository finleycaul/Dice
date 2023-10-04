void setup()
{
  size(1000, 1000);
  noLoop();
}
void draw()
{
  background(0);
for(int y = 0; y<1000; y += 105)
  {
    for(int x = 0; x<1000; x+= 105)
    {
      Die bob = new Die(x,y);
      bob.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, rollNum, r, g, b;

  Die(int x, int y) //constructor
  {
    rollNum = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
    r = (int)(Math.random()*100 +100);
    g = (int)(Math.random()*100 +100);
    b = (int)(Math.random()*100 +100);
  }
  void roll()
  {
     rollNum = (int)(Math.random()*6)+1;
  }
  void show()
  {
    rect(myX, myY, 100, 100);
    fill(r, g, b);
    if (rollNum==1) {
        ellipse(myX+50, myY+50, 20, 20);
    } else if (rollNum==2) {
      ellipse(myX+25, myY+25, 20, 20);
      ellipse(myX+75, myY+75, 20, 20);
    } else if (rollNum==3) {
      ellipse(myX+25, myY+25, 20, 20);
      ellipse(myX+75, myY+75, 20, 20);
      ellipse(myX+50, myY+50, 20, 20);
    } else if (rollNum==4) {
      ellipse(myX+25, myY+25, 20, 20);
      ellipse(myX+73, myY+25, 20, 20);
      ellipse(myX+25, myY+75, 20, 20);
      ellipse(myX+73, myY+75, 20, 20);
    } else if (rollNum==5) {
      ellipse(myX+25, myY+25, 20, 20);
      ellipse(myX+73, myY+25, 20, 20);
      ellipse(myX+25, myY+75, 20, 20);
      ellipse(myX+73, myY+75, 20, 20);
      ellipse(myX+50, myY+50, 20, 20);
    } else if (rollNum==6) {
      ellipse(myX+25, myY+20, 20, 20);
      ellipse(myX+73, myY+20, 20, 20);
      ellipse(myX+25, myY+80, 20, 20);
      ellipse(myX+73, myY+80, 20, 20);
      ellipse(myX+25, myY+50, 20, 20);
      ellipse(myX+73, myY+50, 20, 20);
    }
  }
}
