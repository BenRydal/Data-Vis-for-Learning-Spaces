ArrayList<PImage> floorPlans = new ArrayList(); // A list to hold floor plan images
int floorPlanToDraw = 0; // integer value that selects from floorPlans list
int spacing = 40; // General spacing variable for GUI

void setup() {
  fullScreen();
  background(255); // draw white background
  imageMode(CENTER); // set image mode to center
  loadFloorPlans(); // loads floor plan images see Add_Functions tab
  drawKeys(); // draw keys for GUI, see Add_Functions tab
}

void draw() {
  if (mousePressed == true) {
    stroke(#cb181d); // color red
    strokeWeight(6); // line weight of 6
    line(mouseX, mouseY, pmouseX, pmouseY); // draw red line from previous to current mouse position
  }
}

void keyPressed() {
  background(255);
  if (key == ' ') { // if key is spacebar
    drawFloorPlan();
    drawKeys();
  } else { // if key is any other key, change floor plan, clear drawing space and draw keys
    changeFloorPlan();
    drawFloorPlan();
    drawKeys();
  }
}
