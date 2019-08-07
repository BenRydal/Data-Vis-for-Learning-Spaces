// IMPORT UNFOLDING MAP LIBRARY
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import de.fhpotsdam.unfolding.data.*;

// GLOBAL MAP VARIABLES
UnfoldingMap map; // create your digital map
AbstractMapProvider provider = new Microsoft.RoadProvider(); // additional map tile provider
// AbstractMapProvider provider = new StamenMapProvider.TonerBackground(); // map tile provider
Location locationToStart = new Location(40.730610, -73.935242);  // Location to center map (New York City)

void setup() {
  fullScreen(P2D);
  setMap(); 
  setData();
}

void draw() {
  map.draw();
  // drawFriskData(); // Uncomment to draw data and movement
  // drawMovement();
}

void keyPressed() {
  if (key == ' ') movement.removeAll(movement);
}
