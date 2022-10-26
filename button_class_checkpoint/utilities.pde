void click() {
  mouseReleased = false; //you are not releasing the mouse right now
  if (mousePressed) //if you press, it is confirmed that the mouse was pressed
  wasPressed=true;
  
  if (wasPressed && !mousePressed) { //if it was pressed and you are not pressing anymore; the mouse if released
    mouseReleased = true; //mouse if being released
    wasPressed = false; //mouse is not pressed anymore
  }
}
