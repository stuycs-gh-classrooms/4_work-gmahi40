float circX, circX1, circY, circY1, dotRadius, circRadius, x, y;
boolean t;

void sincos(float amplitude, float period, float startY) {
  if(t == true){
    circY = amplitude * sin(circX/period) * (180/PI) + startY;
    noStroke();
    circle(circX, circY, dotRadius);
    circX += 1;
    if(circX >= width){
      t = false;
    }
  }
  else{
    circY1 = amplitude * cos(circX1/period) * (180/PI) + startY;
    noStroke();
    circle(circX1, circY1, dotRadius);
    circX1 += 1;
    if(circX1 >= width){
      t = true;
    }
  }
}

void spiral(float spiralRadius, float circCenter){
  if(circX >= 0 && circX <= 360){
    circle(x, y, dotRadius);
    y = (circRadius + spiralRadius)*sin(x)*(180/PI) + circCenter;
    x += 1;
    if(x > 360){
      x = 0;
      spiralRadius += 1;
    }
  }
  println(x);
}
void setup() {
  size(500, 500);
  background(0);
  circX = 0;
  circX1 = 0;
  x = 0;
  dotRadius = 10;
}

void draw() {
  sincos(0.5, 50, 100);
  spiral(0, 200);
}
