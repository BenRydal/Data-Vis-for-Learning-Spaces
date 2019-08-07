void keyPressed() {
  movie.play();
  if (key == CODED) {
    if (keyCode == LEFT) movie.jump(movie.time() - jumpSpeed);
    else if (keyCode == RIGHT) movie.jump(movie.time() + jumpSpeed);
  }
}

// Returns true if mouse is over given rectangle, else returns false
boolean overRect(float cx, float cy, float boxWidth, float boxHeight) {
  if (mouseX >= cx - boxWidth && mouseX <= cx + boxWidth &&
    mouseY >= cy - boxHeight && mouseY <= cy + boxHeight) {
    return true;
  } else {
    return false;
  }
}
