/*
Sasha Mohammad 
 Final Project
 ASIM 1310
 */
color snake = color (0, 0, 255);
color food = color (random(255), random(255), random (255));
color scoreboard  = color (0);

void setup() {
  size(500, 500);
  background (255);

  // horizontal grid lines
  for (int i = 0; i < 1000; i = i+30) {
    for (int j = 0; j < 1000; j ++) {
      stroke(0);
      strokeWeight (1);
      line(0, i, 1000, i);
    }
  }

  // vertical grid lines
  for (int i = 0; i < 1000; i = i+30) {
    for (int j = 0; j < 20; j ++) {
      stroke(0);
      strokeWeight (1);
      line(i, 0, i, 1000);
    }
  }
}


class Snake {
}


















//when this is modified, commit this to GitHub via git 
//git commit -am "type in the sketch"
//git push origin master