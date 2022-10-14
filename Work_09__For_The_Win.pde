int radius;
int lineCount;
int circleCount; 

void drawGrid(int numlines) {
  int x = width/numlines;
  int y = height/numlines;
  for(int i = numlines; i >= 0; i--) {
    line(x, 0, x, height);
    x += width/numlines;
    line(0, y, width, y);
    y += height/numlines;
  }
}

void circleRow(int startX, int startY, int numCircles, int d) {
  for(int f = numCircles; f > 0; f--) {
    circle(startX, startY, d);
    startX += d;
  }
}

void setup() {
  size(600, 400);
  
  lineCount = 5;
  drawGrid(lineCount);
  circleCount = 6;
  radius = 25;
  circleRow(radius, height/2, circleCount, radius*2);
}
