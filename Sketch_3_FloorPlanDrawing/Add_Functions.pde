// function to load floor plan images from data folder
void loadFloorPlans() {
  File dataDir = new File(sketchPath("data/")); // Create path to data folder
  for (File f : dataDir.listFiles()) { // loop through all files in the data folder
    if (f.getName().endsWith(".png") || f.getName().endsWith(".jpg") || f.getName().endsWith(".jpeg") || f.getName().endsWith(".GIF")) { // if the file is an image file
      PImage image = loadImage("data/" + f.getName()); // get the image
      floorPlans.add(image);    // load the image
    }
  }
}

// function to draw text/keys for GUI
void drawKeys() {
  textSize(20);
  fill(0);
  stroke(0);
  text("Click your mouse to draw, Spacebar resets drawing, Press any key to change floor plan", spacing, height - spacing/2);
}

// Increments or resets global variable floorPlanToDraw
void changeFloorPlan() {
  if (floorPlanToDraw == floorPlans.size() - 1) floorPlanToDraw = 0; // reset floorPlanToDraw to 0/the 1st image
  else floorPlanToDraw++; // increment floor plan number
}

// Draws floor plan image depending on global variable floorPlanToDraw
void drawFloorPlan() {
  PImage floorPlan = floorPlans.get(floorPlanToDraw);
  if (floorPlan.width  > floorPlan.height) floorPlan.resize(width - 2 * spacing, 0);
  else floorPlan.resize(0, height - 2 * spacing);
  image(floorPlan, width/2, height/2);
}
