// GLOBAL DATA VARIABLES
class DataPoint { // A DataPoint has a location and "string" values
  Location location; // A location has a latitude and longitude value
  String race;
}
ArrayList<DataPoint> friskData = new ArrayList(); // List to hold each data point from stop-and-frisk data set
ArrayList<Location> movement = new ArrayList(); // List to hold user drawn movement
int pointSize = 5; // Adjusts visual size of data points

// Set values for digital map
void setMap() {
  map = new UnfoldingMap(this, 0, 0, width, height, provider);
  MapUtils.createDefaultEventDispatcher(this, map);
  map.zoomToLevel(12);
  map.panTo(locationToStart);
  map.setZoomRange(4, 20); // prevent zooming too far out
  map.setTweening(true);
}

// Load and loop through stop-and-frisk table to add each row as a DataPoint object to friskData list
void setData() {
  Table dataTable = loadTable("data/friskData_2015.csv", "header");
  for (TableRow position : dataTable.rows ()) {
    float lat = position.getFloat("latitude");
    float lng = position.getFloat("longitude");
    if (!Float.isNaN(lat) && !Float.isNaN(lng)) {  // test for bad data
      DataPoint dataPoint = new DataPoint();
      dataPoint.location = new Location(lat, lng);
      dataPoint.race = position.getString("race");
      friskData.add(dataPoint);
    }
  }
}
