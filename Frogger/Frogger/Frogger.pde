int x = 400;
int y = 300;
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
 
 
}
