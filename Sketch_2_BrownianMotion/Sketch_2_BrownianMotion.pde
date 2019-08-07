// "Global" variables for Brownian Motion
int num = 2000; // length of Brownian motion arrays
float[] xPos = new float[num]; // arrays to hold x and y positions to draw Brownian motion
float[] yPos = new float[num]; 

void setup() {
  fullScreen(); // run sketch at full screen
  for (int i = 0; i < num; i++) { // For loop to set initial array values for Brownian motion
    xPos[i] = width/2;
    yPos[i] = height/2;
  }
  frameRate(30);  // this is a function that sets the speed of the program
}

void draw() {
  background(50); 
  drawBrownianMotion();  // a function to draw Brownian motion
}

// ****** TEMPORARILY IGNORE EVERYTHING BELOW THIS LINE ******

void drawBrownianMotion() {
  // Shift all elements 1 place to the left
  int range = 6; // For random number generator 
  for (int i = 1; i < num; i++) {
    xPos[i-1] = xPos[i];
    yPos[i-1] = yPos[i];
  }

  // Put a new value at the end of the arryPos
  xPos[num-1] += random(-range, range);
  yPos[num-1] += random(-range, range);

  // Constrain all points to the screen
  xPos[num-1] = constrain(xPos[num-1], 0, width);
  yPos[num-1] = constrain(yPos[num-1], 0, height);

  // Draw a line connecting the points
  for (int i=1; i<num; i++) {    
    float val = float(i)/num * 204.0 + 51;
    stroke(val);
    line(xPos[i-1], yPos[i-1], xPos[i], yPos[i]);
  }
}
