import processing.video.*; // import processing video library

String [] transcript; // An array to hold transcript text
PFont font; // Allows you to load/set processing font type
Movie movie; // Movie object to import/load video file
float jumpSpeed = 20.0; // Number of seconds to fast foward/rewind video in GUI
int spacing = 20; // General spacing variable for GUI

void setup() {
  fullScreen();
  setData();
  loadTranscript();
  loadVideo();
}

void draw() {
  background(255);
  drawMovie();
  if (overRect(width/2, height/2, movie.width/2, movie.height/2)) drawTranscript();
  drawInfoMsg();
}
