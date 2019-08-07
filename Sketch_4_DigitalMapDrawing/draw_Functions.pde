// Loop through all data and draw a point with stroke color corresponding to race recorded in data
void drawFriskData() {
  for (int i = 0; i < friskData.size(); i++) {
    DataPoint point = friskData.get(i);
    ScreenPosition pos = map.getScreenPosition(point.location);
    strokeWeight(pointSize); // controls size of point
    if (point.race.equals("Hispanic")) stroke(#d94801);  // HISPANIC
    else if (point.race.equals("Black")) stroke(#238b45);   // BLACK 
    else if (point.race.equals("White")) stroke(#2171b5);  // WHITE
    else if (point.race.equals("Other")) stroke(#FFFC33);  // OTHER
    point(pos.x, pos.y);
  }
}

// Updates movement list and draws all points in movement list
void drawMovement() {
  if (keyPressed)  movement.add(map.getLocation(mouseX, mouseY)); // if user is pressing a key, add latitude/longitude of mouse position to movement list
  // set fill, strokeweight, stroke values
  noFill();
  strokeWeight(5);
  stroke(0);
  beginShape(); 
  for (int i = 0; i < movement.size(); i++) { // loop through movement list and draw line connecting all points
    if (i != 0) {
      ScreenPosition pos_1 = map.getScreenPosition(movement.get(i));
      vertex(pos_1.x, pos_1.y);
    }
  }
  endShape();
}
