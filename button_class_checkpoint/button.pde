class Button {

  //instance variable
  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text;
  PImage pic;
  int type;
  float scale;

 //constructor (button with text)
  Button (String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x= _x; //_x means its another version of x
    y= _y;
    w= _w;
    h= _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
    type=1;
  }

  //constructor (button with image)
  Button (PImage p, int _x, int _y, int _w, int _h, color norm, color high) {
    x= _x; //_x means its another version of x
    y= _y;
    w= _w;
    h= _h;
    pic = p;
    highlight = high;
    normal = norm;
    clicked = false;
    type=2;
  }
  
  
  //behavior function
  //for mousetouching rect
  boolean mouseTouchingRect() { 
    if (mouseX> x-w/2 && mouseX< x+w/2 && mouseY> y-h/2 && mouseY< y+h/2) {
      return true;
    } else {
      return false;
    }
  }
  
  //show the functions
  void show() {
    drawRect();
    if (type==1) {
      drawLabel();
    } else if (type==2) {
      drawPic();
    }
    checkClick();
  }

 //rect drawing function
  void drawRect() {
    rectMode(CENTER);
    if (mouseTouchingRect()) {
      stroke(normal);
      fill(highlight);
    } else {
      stroke(highlight);
      fill(normal);
    }
    // stroke(normal);
    strokeWeight(4);
    rect(x, y, w, h, 30);
  }

  //label function (w/text)
  void drawLabel() {
    textAlign (CENTER, CENTER);
    if (mouseTouchingRect()) {
      fill(normal);
    } else {
      fill (highlight);
    }
    textSize(w/4);
    text (text, x, y);
  }
 
  //pic function (w/pic)
  void drawPic() {
    //scaling pic method #1
    imageMode(CENTER);
    image (pic, x, y, w*0.9, h*0.9);
  }
  
  //clicking function
  void checkClick() {
    if (mouseReleased && mouseTouchingRect()) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}
