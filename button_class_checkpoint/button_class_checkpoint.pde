//color pallette
color blue    = #3a86ff;
color Lblue   = #a2d2ff;
color purple  = #8338ec;
color Lpurple = #cfbaf0;
color pink    = #ff006e;
color Lpink   = #ffafcc;
color yellow  = #ffbe0b;
color Lyellow = #fbf8cc;
color orange = #fb5607;
color Lorange = #f4a261;

//mouse functions
boolean mouseReleased;
boolean wasPressed;

//image 
PImage smiley;

//background
color bkg= 225;

//button class
Button myButton, myButtons, myButtonss, myButtonsss; //class and all the objects
//Button myButtons;
//Button myButtonss;
//Button myButtonsss;

void setup() {
  size(600, 600);
  smiley = loadImage("smiley.png");

  myButton   = new Button("blue", 195, 180, 315, 150, Lblue, blue); //text, x, y, w, h, color, color
  myButtons  = new Button ("purple", 465, 180, 180, 150, Lpurple, purple);
  myButtonss = new Button ("pink", 130, 370, 180, 150, Lpink, pink);
  myButtonsss = new Button (smiley, 400, 370, 315, 150, Lorange, orange);
}

void draw() {

  background(bkg);
  click(); //since its not in the button class, cannot write myButton.click()

  myButton.show();
  myButtons.show();
  myButtonss.show();
  myButtonsss.show();

  if (myButton.clicked) {
    bkg = myButton.normal;
  }

  if (myButtons.clicked) {
    bkg = myButtons.normal;
  }

  if (myButtonss.clicked) {
    bkg = myButtonss.normal;
  }

  if (myButtonsss.clicked) {
    bkg = myButtonsss.normal;
  }
}
