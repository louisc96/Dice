void setup()
{

  size (550, 600);
  noLoop();
}
int total = 0;
void draw()
{
  background(0);
  total = 0;
  for (int j = 0; j <450; j += 60) {
    for (int i = 0; i < 550; i+= 60) {
      Die bob = new Die(10 + i, 10 + j);
      bob.roll();
      bob.show();
      System.out.println("The total is " + total);
    }
  }
  textSize(64);
  fill(255, 255, 255);
  text("The total is " + total, 80, 550);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY, numberRoll, cr, cg, cb;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    cr = (int)(Math.random()*256);
    cg = (int)(Math.random()*256);
    cb = (int)(Math.random()*256);
  }
  void roll()
  {
    numberRoll = (int)(Math.random()*6) + 1;
    System.out.println(numberRoll);
    total += numberRoll;
  }

  void show()
  {
    if (numberRoll == 1) {
      fill(cr, cg, cb);
      rect(myX, myY, 50, 50);
      fill(0, cg, cb);
      ellipse (myX + 25, myY + 25, 10, 10);
    } else if (numberRoll == 2) {
      fill(cr, cg, 0);
      rect(myX, myY, 50, 50);
      fill(cr, cg, cb);
      ellipse (myX + 10, myY + 40, 10, 10);
      ellipse (myX + 40, myY + 10, 10, 10);
    } else if (numberRoll == 3) {
      fill(cr, 0, cb);
      rect(myX, myY, 50, 50);
      fill(cr, cg, cb);
      ellipse (myX + 25, myY + 25, 10, 10);
      ellipse (myX + 10, myY + 40, 10, 10);
      ellipse (myX + 40, myY + 10, 10, 10);
    } else if (numberRoll == 4) {
      fill(cr, cg, cb);
      rect(myX, myY, 50, 50);
      fill(cr, cg, 0);
      ellipse (myX + 10, myY + 40, 10, 10);
      ellipse (myX + 40, myY + 10, 10, 10);
      ellipse (myX + 40, myY + 40, 10, 10);
      ellipse (myX + 10, myY + 10, 10, 10);
    } else if (numberRoll == 5) {
      fill(cr, cg, cb);
      rect(myX, myY, 50, 50);
      fill(0, cg, cb);
      ellipse (myX + 25, myY + 25, 10, 10);
      ellipse (myX + 10, myY + 40, 10, 10);
      ellipse (myX + 40, myY + 10, 10, 10);
      ellipse (myX + 40, myY + 40, 10, 10);
      ellipse (myX + 10, myY + 10, 10, 10);
    } else {
      fill(cr, cg, cb);
      rect(myX, myY, 50, 50);
      fill(cr, 0, cb);
      ellipse (myX + 10, myY + 40, 10, 10);
      ellipse (myX + 40, myY + 10, 10, 10);
      ellipse (myX + 40, myY + 40, 10, 10);
      ellipse (myX + 10, myY + 10, 10, 10);
      ellipse (myX + 40, myY + 25, 10, 10);
      ellipse (myX + 10, myY + 25, 10, 10);
    }
  }
}
