int x = 400;
int y = 300;
Car car1 = new Car();
car1.setParam(0, 0, 50, 2);
car1.display();
void draw(){
  background(4, 13, 123);
  fill(#0EED35);
  ellipse(x,y,50,50);
  EdgeASketch();
}
void setup(){
 size(800, 600); 
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            y -= 5;
        }
        else if(keyCode == DOWN)
        {
            y+=5; 
        }
        else if(keyCode == RIGHT)
        {
            x+=5;
        }
        else if(keyCode == LEFT)
        {
            x-=5;
        }
    }
}

void EdgeASketch(){
  if(x>=800){
    x = 800;
  }
  if(x<=0){
    x = 0;
  }
  if(y>=600){
    y = 600;
  }
  if(y<=0){
    y = 0;
  }
}

class Car{
 private int crx;
 private int cry;
 private int siz;
 private int spid;
 
 public void setParam(int crx, int cry, int siz, int spid){
   this.crx = crx;
   this.cry = cry;
   this. siz = siz;
   this.spid = spid;
 }
 
 void display()
  {
    fill(0,255,0);
    rect(crx , cry,  siz, 50);
  }
}
