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
//METHOD #1
Button myButton, myButtons, myButtonss, myButtonsss; //class and all the objects

//METHOD #2: 
//array of buttons
//Button[] myButtons; //declare array


void setup() {
  size(600, 600);
  smiley = loadImage("smiley.png");

  //METHOD #1
  myButton   = new Button("blue", 195, 180, 315, 150, Lblue, blue); //text, x, y, w, h, color, color
  myButtons  = new Button ("purple", 465, 180, 180, 150, Lpurple, purple);
  myButtonss = new Button ("pink", 130, 370, 180, 150, Lpink, pink);
  myButtonsss = new Button (smiley, 400, 370, 315, 150, Lorange, orange);
  
  //METHOD #2 instantiate array (cannot draw loop since parameters are diff
  //myButtons = new Button [4] //means 4 buttons (NOTES: when trying to make an object, call the construction w parememters
  //myButton [0] = new Button(add parameters)
  //...
  //myButton [0] = new Button(add parameters)
  
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
  
  //METHOD 2, could make loop to show buttons
  //int j=0;
  //while (j<4){
  //  myButtons[i].show();
  //  if (myButtons[i].clicked){
  //    bkg= myButtons[i].normal;
  //  }
  //}
}
