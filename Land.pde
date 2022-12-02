class Land {
  int state, nextState, landSize, landColor, xcor, ycor, size;

  Land(int x, int y, int size, int type) {
    xcor = x;
    ycor = y;
    landSize =  size;
    state = type;
  }
  void updateNextState(int state) {
    if(state == 3 && nextState == 2){
      nextState = 1;
    }
    else if(state == 3 && nextState != 1){
      nextState = 3;
    }
    else if(state == 1){
      nextState = 2;
    }
    else if(state == 0){
      nextState = 0;
    }

  }
  void display() {
    if (state == 0) {
      fill(#81582F);
    } else if (state == 1) {
      fill(#F20C0C);
    } else if (state == 2) {
      fill(#810707);
    } else {
      fill(#49B90D);
    }
    square(xcor, ycor, landSize);
  }
  void changeState() {
    updateNextState(state);
    state = nextState;
  }
}
