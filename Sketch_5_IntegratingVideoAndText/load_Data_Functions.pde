// Sets initial values for GUI/Data
void setData() {
  font = loadFont("Helvetica-24.vlw");
  textSize(14);
  textFont(font, 16);
  fill(0);
  stroke(0);
}

// loads a text file into the transcript string array
void loadTranscript() {
  transcript = loadStrings("transcript.txt");
}

// Loops through all files in data folder and loads 1 video file
void loadVideo() {
  final File dataDir = new File(sketchPath("data/")); // Create path to data folder
  for (final File f : dataDir.listFiles()) { // loop through all files in directory
    String fileName = f.getName();
    if (fileName.endsWith(".mp4") || fileName.endsWith(".mov")) { // If it is a video file Processing supports
      movie = new Movie(this, fileName);
      movie.play();
      movie.loop();
      break; // only load 1 file
    }
  }
}

// This function is required for Processing video functionality
void movieEvent(Movie m) {
  m.read();
}
