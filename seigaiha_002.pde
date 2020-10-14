int grid = 380;
int outerCircle = 760;
int innerCircle =  640;

void setup() {
  size(760, 760);
  background(0);
  stroke(255);
  noFill();
  noLoop();
}


void draw() {

  strokeWeight(1);
  //line(0, height/2, width, height/2);

  float centerX = width/2;
  float centerY = height/2;

  //ellipse(centerX, centerY, outerCircle, outerCircle);
  //ellipse(centerX, centerY, innerCircle, innerCircle);
  strokeWeight(4);

  arc(centerX, centerY, outerCircle, outerCircle, radians(180), radians(360));
  arc(centerX, centerY, innerCircle, innerCircle, radians(180), radians(360));

  arc(0, height, outerCircle, outerCircle, radians(180), radians(360));
  arc(0, height, innerCircle, innerCircle, radians(180), radians(360)); 

  arc(0, height, outerCircle, outerCircle, radians(270), radians(360));
  arc(0, height, innerCircle, innerCircle, radians(270), radians(360)); 

  arc(0, height, outerCircle, outerCircle, radians(270), radians(360));
  arc(0, height, innerCircle, innerCircle, radians(270), radians(360)); 

  arc(width, height, outerCircle, outerCircle, radians(90), radians(270));
  arc(width, height, innerCircle, innerCircle, radians(90), radians(270));

  arc(centerX, centerY + innerCircle /2, innerCircle, innerCircle, radians(270-34), radians(270+34));
  arc(0, 0 + innerCircle /2, innerCircle, innerCircle, radians(270-34), radians(270+34));

  arc(width,  innerCircle /2, innerCircle, innerCircle, radians(180 + 56), radians(270));

save("tile.png");
}
