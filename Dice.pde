Die one;
int siz = 50;
int sizE = 10;
int myX, myY, sum, dieNumber;
void setup()
  {
      noLoop();
      size(700,700);
  }
  void draw()
  {
      background(197);
      sum = 0;
     for(myY=100; myY < 596; myY+=55)
          {
            for(myX=50; myX<216; myX +=55)
            {
              one = new Die(myX, myY);
              one.show();
              sum = sum + one.dieNumber;
            }
          }
      fill(#000000);
      textSize(16);
      text("The sum of the rolls is " + sum,300,100);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
   int dieNumber;
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
      }
      void roll()
      {
         dieNumber = (int)(Math.random()*6)+1;
         
      }
      void show()
      {
            roll();
            fill(#000000);
            rect(myX, myY, siz, siz);
            if (dieNumber == 1 || dieNumber == 5 || dieNumber==3){
              fill(#FFFFFF);
              ellipse(myX+25, myY+25, sizE, sizE);
            }if (dieNumber == 2 || dieNumber == 6 || dieNumber==3){
              fill(#FFFFFF);
              ellipse(myX+40, myY+25, sizE, sizE);
              ellipse(myX+10, myY+25, sizE, sizE);
            }if (dieNumber == 4 || dieNumber == 6 || dieNumber == 5){
             fill(#FFFFFF);
             ellipse(myX+40, myY+10, sizE, sizE);
             ellipse(myX+10, myY+10, sizE, sizE);  
             ellipse(myX+10, myY+40, sizE, sizE);
             ellipse(myX+40, myY+40, sizE, sizE); 
      }
      }      
      }
           
