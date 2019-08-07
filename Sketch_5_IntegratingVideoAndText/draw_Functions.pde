// Draws image for video at center of screen
void drawMovie() {
  imageMode(CENTER);
  image(movie, width/2, height/2, movie.width, movie.height);
}

// Draws transcript text beginning at top of screen
void drawTranscript() {
  textAlign(LEFT);
  textSize(16);
  stroke(0);
  fill(255, 200);
  rect(0, 0, width, height/3);
  fill(0);
  for (int i = 0; i < transcript.length; i++) {
    text(transcript[i], 0 + spacing, 0 + spacing + i * spacing, width - spacing, height/3 - spacing);
  }
}

// Draws info message 
void drawInfoMsg() {
  String msg = "Hover over video to read transcript, press left/right arrow keys to rewind/fast-forward video";
  textAlign(CENTER);
  textSize(20);
  text(msg, width/2, height - spacing);
}
