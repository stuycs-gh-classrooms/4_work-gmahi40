void cow (int cowX, int cowY, int cowSize) {
  
fill(250, 200, 100);
rect(cowX, cowY, 10 * cowSize, 15 * cowSize, 100);
ellipse(cowX, cowY + 10, 5 * cowSize, 3 * cowSize);
ellipse(cowX + (10 * cowSize), cowY + 10, 5 * cowSize, 3 * cowSize);
fill(255, 150, 255);
rect(cowX + (0.5 * cowSize), cowY + (10 * cowSize), 9 * cowSize, 6 * cowSize, 200);
fill(255);
ellipse(cowX + cowSize, cowY + (5 * cowSize), 2 * cowSize, 2 * cowSize);
ellipse(cowX + (9 * cowSize), cowY + (5 * cowSize), 2 * cowSize, 2 * cowSize);
fill(0);
ellipse(cowX + cowSize, cowY + (5 * cowSize), cowSize, cowSize);
ellipse(cowX + (9 * cowSize), cowY + (5 * cowSize), cowSize, cowSize);
}

void setup () {
  size (400, 400);
  cow (width/2, height/2, 5);
  cow (100, 100, 10);
  cow (300, 277, 3);
  cow (250, 50, 8);
}
