  int movingX, movingY, radius, startX, y;
void circleRow(int startX, int endX, int y, int d){
  while(startX <= endX){
    circle(startX, y, d);
    startX = startX + d;
  }
}

void setup() {
  size(400, 400);
  background(255);
  movingX = 0;
  movingY = 0;
  radius = 100;
}

void draw() {
  background(255);
  circleRow(0, 400, 20, 50);
  circle(movingX + startX, movingY + radius, radius);
  movingX++ ;
  if (movingX >= width){
    movingX = startX;
    movingY = movingY + radius;
  }
  if (movingY >= height){
    movingY = y;
  }
}
