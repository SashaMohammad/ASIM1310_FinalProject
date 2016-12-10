/*
Sasha Mohammad 
 Final Project
 ASIM 1310
 */

ArrayList<Integer> snakex = new ArrayList<Integer>();
ArrayList<Integer> snakey = new ArrayList<Integer>();
int w = 30;
int h = 30;
int square = 20;
int direction = 3;
int[] dirx = {0, 0, 1, -1};
int[] diry = {1, -1, 0, 0};
int foodx = 10;
int foody = 8;
boolean gameover = false;
void setup() {
  size(600, 600);
  snakex.add(15);
  snakey.add(15);
}


void draw() {
  background(255);
//grid lines
  for (int i = 0; i < w; i++) {
    line (i*square, 0, i*square, height);
  }
  for (int i =0; i<h; i++) {
    line (0, i*square, width, i*square);
  }


  for (int i = 0; i<snakex.size(); i++) {
    fill(0, 255, 0);
    ellipseMode(CORNER);
    ellipse(snakex.get(i)*square, snakey.get(i)*square, square, square);
  }
  if (!gameover){
//food
  fill (random(255), random(255), random (255));
  rect (foodx*square, foody*square, square, square);
  if (frameCount %5==0) {
    snakex.add(0, snakex.get(0) + dirx [direction]);
    snakey.add(0, snakey.get(0) + diry [direction]);
    if (snakex.get(0) < 0 || snakey.get(0)< 0 || snakex.get(0) >= w || snakey.get(0) >= h) gameover = true;
    for (int i = 1; i < snakex.size(); i ++) if (snakex.get(0)== snakex.get(i) && snakey.get(0)== snakey.get(i)) gameover = true;
    if (snakex.get(0) == foodx && snakey.get(0) == foody) {
      foodx = (int) random (0, w);
      foody = (int) random (0, h);
    } else{
        snakex.remove(snakex.size()-1);
        snakey.remove(snakey.size()-1);
  }
}
} else{
    fill(255,0,0);
    textSize(25);
    textAlign(CENTER);
    text("Game over - Press Space Bar to Restart", width/2, height/2);
    if(keyPressed&& key ==' '){
      snakex.clear();
      snakey.clear();
      snakex.add(5);
      snakey.add(5);
      gameover = false;
    }    
}

  
}


void keyPressed() {
  if (key == CODED) {
    int newdirection = keyCode==DOWN ?0 : (keyCode==UP ? 1:(keyCode==RIGHT ? 2:(keyCode==LEFT ? 3: -1)));
    if (newdirection != -1 && (snakex.size() <= 1 || !(snakex.get(1)==snakex.get(0)+dirx[newdirection] && snakey.get(1)==snakey.get(0)+diry[newdirection]))) direction = newdirection;
  }
}














////when this is modified, commit this to GitHub via git 
////git commit -am "type in the sketch"
////git push origin master