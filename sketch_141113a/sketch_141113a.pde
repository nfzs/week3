float x, y;
float ballSize=30;
float speed=5;
boolean movingUp=false; // either false or true
boolean movingRight=false;

void setup() {
  size(640, 240);
  y=ballSize*1.5;
  x=width/2;
}

void draw() {
  background(#0D0D0D); // use colour selector
  fill(145, 0, 250); // use colour selector RGB
  ellipse(x, y, ballSize, ballSize);

  if (y+ballSize/2>=height) {
    movingUp=true;
  }
  else if (y-ballSize/2<=0) {
    movingUp=false;
  }

  if (movingUp) {
    y=y-speed;
  } else {
    y=y+speed;
  }

  if (x+ballSize/2>=width) {
    movingRight=true;
  } else if (x-ballSize/2<=0) {
    movingRight=false;
  }

  if (movingRight) {
    x=x-speed;
  } else {
    x=x+speed;
  }
}

