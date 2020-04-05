int birdX = 50;
int birdY = 400;
int birdYVelocity = 30;
int gravity = 1;
int pipeX = 780;
int upPipeHeight = 370;
int pipeGap = 200;
int lowerY = upPipeHeight+pipeGap;
int lPipeTop = 800-lowerY;
PImage gameOver;
void draw(){
  background(58, 243, 158);
  fill(#E8FC12);
  stroke(1, 2, 3);
  ellipse(birdX, birdY, 50, 50);
  fill(0, 250, 0);
  rect(pipeX, 0, 20, upPipeHeight);
  rect(pipeX,lowerY, 20, lPipeTop);
  birdY+=gravity;
  pipeX-=5;
  if(intersectsPipes()==true){
    gameOver();
    exit();
  }
  lowerY = upPipeHeight+pipeGap;
  lPipeTop = 800-lowerY;
  teleportPipe();
  
}

void setup(){
  size(800,800);
  gameOver = loadImage("game_over.jpg");
  gameOver.resize(800,800);
}

void mousePressed(){
  birdY-=birdYVelocity;
}

void teleportPipe(){
  if(pipeX<=0){
    upPipeHeight = (int) random(100, 370); 
    pipeX = 780;
  }

}


boolean intersectsPipes() { 
         if (birdY < upPipeHeight && birdX > pipeX && birdX < (pipeX+20)){ //<>//
            return true; } //<>//
        else if (birdY>lPipeTop && birdX > pipeX && birdX < (pipeX+20)) { //<>//
            return true; } //<>//
        else { return false; 
      }
}
void gameOver() {
   background(gameOver);

}
