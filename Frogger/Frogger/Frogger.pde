int x = 800;
int y = 600;
Car car1 = new Car();
Car car2 = new Car();
Car car3 = new Car();
Car car4 = new Car();
void draw(){
  background(4, 13, 123);
  fill(#0EED35);
  ellipse(x,y,50,50);
  EdgeASketch();
  car1.display();
  car1.moveRight();
  if (intersects(car1) == true){
    x = 800;
    y = 600;
  }
  car2.display();
  car2.moveRight();
  if (intersects(car2) == true){
    x = 800;
    y = 600;
  }
  car3.display();
  car3.moveLeft();
  if (intersects(car3) == true){
    x = 800;
    y = 600;
  }
  car4.display();
  car4.moveLeft();
  if (intersects(car4) == true){
    x = 800;
    y = 600;
  }
}
void setup(){
 size(800, 600);
 car1.setParam(0, 0, 50, 10);
 car2.setParam(0, 250, 50, 10);
 car3.setParam(800, 70, 50, 10);
 car4.setParam(800, 400, 50, 10);
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

boolean intersects(Car car) {
 if ((y > car.getCry() && y < car.getCry()+50) &&
                (x > car.getCrx() && x < car.getCrx()+car.getSiz())) {
   return true;
  }
 else  {
  return false;
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
 
 int getCrx(){
   return this.crx;
 }
 
 int getCry(){
  return this.cry; 
 }
 
 int getSiz(){
  return this.siz; 
 }
 
 void display()
  {
    fill(#F01111);
    rect(crx , cry,  siz, 50);
  }
  
  void moveLeft(){
    crx-=spid;
    if (crx<0){
      crx = width;
    }
  }
    
  void moveRight(){
    crx += spid;
    if (crx>width){
      crx = 0;
   }
  }
}
