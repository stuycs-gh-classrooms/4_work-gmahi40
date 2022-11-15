int numPoints, xCor, yCor, P;
int[] xvals;
int[] yvals;



void makeLines(int[] xs, int[] ys, int points){
  if(points > xs.length || points > ys.length){
    println("Stop! You have violated the law!");
  }
  else{
    for(int i = 0; i < points; i++){
    xs[i] = xCor;
    ys[i] = yCor;
    }
  }
}

void drawLines(int[] xs, int[] ys){
  if(numPoints >= 2){
    for(int i = 1; i < numPoints; i++){
      stroke(255);
      line(xs[i - 1], ys[i - 1], xs[i], ys[i]);
    }
  }
}

void setup(){
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;
  P = 0;
} 

void draw(){
  if(mousePressed == true){
    makeLines(xvals, yvals, 1);
    drawLines(xvals, yvals);
    
  }
}

void mouseClicked(){
  xCor = mouseX;
  yCor = mouseY;
  numPoints++;
}
