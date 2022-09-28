void drawLightning(int x, int y, int numParts){
  int nextx = int(random(x - 5, x + 5));
  int nexty = y + (height/numParts);
  while(y <= height){
    stroke(255, 255, 0);
    line(x, y, nextx, nexty);
    x = nextx;
    nextx = nextx + int(random (-5, 5));
    y = y + (height/numParts);
    nexty = y + (height/numParts);
  }
}

void setup() {
  size(500, 500);
  background(0);
  drawLightning(255, 0, 10);
  drawLightning(100, 62, 60);
  drawLightning(52, 78, 6);
  drawLightning(95, 85, 9);
  drawLightning(405, 0, 100);
}
