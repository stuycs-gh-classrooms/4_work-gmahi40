int size, xxMod, yyMod, v;
int[] xvals = new int[100];
int[] yvals = new int[xvals.length];
int[] xDrag = new int[size];
int[] yDrag = new int[size];
int numPoints = 0;

void setup() {
  size(600, 600);
  background(0);
  stroke(255);
  drawLines(xvals, yvals);
}


void draw() {
  background(0);
  drawLines(xvals, yvals);
}


//void makeLines(int[] xs, int[] ys, int points){
//  numPoints = points;
//  if(points <= xvals.length){
//    println("x: ");
//    for(int i=0; i<points; i++){
//      xs[i] = int(random(0, width));
//      print(xs[i] +", ");
//    }
//    println("y: ");
//    for(int i=0; i<points; i++){
//      ys[i] = int(random(0, height));
//            print(ys[i] +", ");

//    }
//  }

//}

void drawLines(int[] xs, int[] ys) {
  if (numPoints <= xvals.length) {

    for (int i = 1; i < numPoints; i++) {
      stroke(255);
      line(xs[i], ys[i], xs[i-1], ys[i-1]);
    }
  }
}

void moveLines(int[] xs, int[] ys, int xMod, int yMod) {
  for (int i = 0; i < numPoints; i++) {
    xs[i] += xMod;
    ys[i] -= yMod;
  }
}

void mousePressed() {
  if (numPoints+1 <= xvals.length) {


    xvals[numPoints] = mouseX;
    yvals[numPoints] = mouseY;
    drawLines(xvals, yvals);

    numPoints ++;
  }
}

void mouseDragged() {
  size++;
  xDrag = expand(xDrag, size);
  yDrag = expand(yDrag, size);

  for (int i = 0 + v; i < size; i++) {
    xDrag[i] = mouseX;
    yDrag[i] = mouseY;
    xxMod = (xDrag[xDrag.length - 1] - xDrag[0])/100;
    yyMod = (yDrag[yDrag.length - 1] - yDrag[0])/-100;
  }
  v = 1;
  moveLines(xvals, yvals, xxMod, yyMod);
}
void keyPressed() {
  if(key == 'c'){
    numPoints = 0;
  }
  if(keyCode == UP){
    yyMod = 1;
    moveLines(xvals, yvals, xxMod, yyMod);
  }
    if(keyCode == DOWN){
    yyMod = -1;
    moveLines(xvals, yvals, xxMod, yyMod);
  }
    if(keyCode == LEFT){
    xxMod = -1;
    moveLines(xvals, yvals, xxMod, yyMod);
  }
    if(keyCode == RIGHT){
    xxMod = 1;
    moveLines(xvals, yvals, xxMod, yyMod);
  }
}
