// Author Rupert Russell
// 14 October 2020
// Processing 3.5 Java code on Github at: https://github.com/rupertrussell/seigaiha_005 
// Artwork on Redbubble at: https://www.redbubble.com/shop/ap/59870217?ref=studio-promote
// Based on Seigaiha design in Japanese Quilt Blocks to Mix & Match by Susan Briscoe 
// https://www.penguinrandomhouse.com/books/563515/japanese-quilt-blocks-to-mix-and-match-by-susan-briscoe/
// ISBN: ISBN 9781568363653

int outerCircle = 760;
int innerCircle =  640;

float startStitch;
float stopStitch;
float stitchGapLenghtDegrees;

void setup() {
  size(760, 760);
  background(0);
  stroke(255);
  noFill();
  noLoop();
}

void draw() {
  float centerX = width/2;
  float centerY = height/2;

  strokeWeight(5);

  dashedArc(centerX, centerY, outerCircle, outerCircle, 180, 360, 59, 3);   // top main outer
  dashedArc(centerX, centerY, innerCircle, innerCircle, 180, 360, 47, 3.7); // top main inner
  dashedArc(0, height, innerCircle, innerCircle, 180, 360, 15, 3.7);
  dashedArc(0, height, outerCircle, outerCircle, 270, 360, 59, 3);
  dashedArc(0, height, innerCircle, innerCircle, 270, 360, 24, 3.7);  // lower inner left half
  dashedArc(width, height, outerCircle, outerCircle, 90, 270, 59, 3);
  dashedArc(width, height, innerCircle, innerCircle, 180, 270, 23, 3.7);  // lower inner right half);
  dashedArc(centerX, centerY + innerCircle /2, innerCircle, innerCircle, 270-34, 270+34, 17, 3.7);  // center lower inner arc
  dashedArc(0, 0 + innerCircle /2, innerCircle, innerCircle, 270-34, 270+34, 17, 3.7 ); // top left inner 
  dashedArc(width, innerCircle /2, innerCircle, innerCircle, 180 + 56, 270, 17, 3.7);
  save("Seigaiha_005.png");
}

void dashedArc(float _xCent, float _yCent, float _xScale, float _yScale, float _start, float _stop, float _numberOfStitches, float _stitchLenghtDegrees) {

  println(_xCent + " " + _yCent+ " " + _xScale+ " " + _yScale+ " " + _start+ " " + _stop);
  //  arc(_xCent, _yCent, _xScale, _yScale, radians(_start), radians(_stop));


  for (float n = 0; n <= _numberOfStitches; n = n +1) {

    startStitch = _start + n * _stitchLenghtDegrees;
    stopStitch = startStitch + _stitchLenghtDegrees;

    stitchGapLenghtDegrees = _stitchLenghtDegrees * 0.6;

    startStitch = startStitch + stitchGapLenghtDegrees;
    // stroke(random(255),random(255),100);
    arc(_xCent, _yCent, _xScale, _yScale, radians(startStitch), radians(stopStitch));
  }
  stroke(255);
}
