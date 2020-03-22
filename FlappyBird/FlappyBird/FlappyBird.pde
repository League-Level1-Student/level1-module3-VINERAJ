int birdX = 0;
int birdY = 400;
int birdYVelocity = 30;
int gravity = 10;
void draw(){
  background(58, 243, 158);
  fill(#E8FC12);
  stroke(1, 2, 3);
  ellipse(birdX, birdY, 50, 50);
  birdX+=5;
  birdY+=gravity;
}

void setup(){
  size(800,800);
}
