//Globale Variabler

//Knap Variabler
int XKnap = 200, YKnap = 150;
int WKnap = 100, HKnap = 110;

//Boolean
Boolean LightOn = false;
Boolean LightOff = false;
Boolean EyeOpenLight = false;
Boolean EyeCloseLight = false;
Boolean EyeOpenDark = false;
Boolean EyeCloseDark = false;

//Billede
PImage Lamp;

void setup() {
  //Lokale Variabler
  size(500, 500);

  Lamp = loadImage("Lamp.png");
}

void draw() {
  //Lokale Variabler
  float EyeClose = random(0, 100);

  //draw kode
  clear();
  frameRate(15);

  if (LightOn) {

    if (EyeCloseLight) {
      //baggrundsfarve
      background(125);

      //Figur 1
      ellipse(50, 100, 75, 75);
      //Øjet
      ellipse(65, 90, 15, 25);

      //Figur 2
      ellipse(450, 100, 75, 75);
      //Øjet
      ellipse(435, 90, 15, 25);

      //Billede
      image(Lamp, 200, 150, 100, 100);
      stroke(253, 249, 39);
      //Lys Stråler
      line(300, 150, 350, 130);
      line(300, 175, 375, 155);
      line(302, 200, 375, 205);
      line(300, 225, 350, 230);

      //Lys Stråler Venstre side
      line(200, 150, 150, 130);
      line(200, 175, 125, 155);
      line(202, 200, 125, 205);
      line(200, 225, 150, 230);

      stroke(0);
    }

    if (EyeOpenLight) {
      //baggrundsfarve
      background(125);

      //Figur 1
      ellipse(50, 100, 75, 75);
      //Øjet
      ellipse(65, 90, 15, 25);
      //pupil
      fill(0);
      ellipse(68, 90, 5, 10);
      fill(255);

      //Figur 2
      ellipse(450, 100, 75, 75);
      //Øjet
      ellipse(435, 90, 15, 25);
      //pupil
      fill(0);
      ellipse(432, 90, 5, 10);
      fill(255);

      //Billede
      image(Lamp, 200, 150, 100, 100);
      stroke(253, 249, 39);
      //Lys Stråler Højre side
      line(300, 150, 350, 130);
      line(300, 175, 375, 155);
      line(302, 200, 375, 205);
      line(300, 225, 350, 230);

      //Lys Stråler Venstre side
      line(200, 150, 150, 130);
      line(200, 175, 125, 155);
      line(202, 200, 125, 205);
      line(200, 225, 150, 230);

      stroke(0);
    }

    if (EyeClose > 92.5) {
      EyeOpenLight = false;
      EyeCloseLight = true;
      println("If Lys Virker");
    } else {
      EyeOpenLight = true;
      EyeCloseLight = false;
    }

    if (mousePressed) {
      if (mouseX>XKnap && mouseX <XKnap+WKnap && mouseY>YKnap && mouseY <YKnap+HKnap) {
      LightOn = false;
      LightOff = true;
      }
    }
  }

  if (LightOff) {

    if (EyeOpenDark) {
      background(0);

      //Figur 1

      //Øjet
      ellipse(65, 90, 15, 25);
      //pupil
      fill(0);
      ellipse(68, 90, 5, 10);
      fill(255);

      //Figur 2
      //Øjet
      ellipse(435, 90, 15, 25);
      //pupil
      fill(0);
      ellipse(432, 90, 5, 10);
      fill(255);

      //Billede
      image(Lamp, 200, 150, 100, 100);
    }

    if (EyeCloseDark) {
      background(0);

      //Billede
      image(Lamp, 200, 150, 100, 100);
    }
    if (EyeClose > 92.5) {
      EyeOpenDark = false;
      EyeCloseDark = true;
      println("If Dark Virker");
    } else {
      EyeOpenDark = true;
      EyeCloseDark = false;
    }
     if (mousePressed) {
      if (mouseX>XKnap && mouseX <XKnap+WKnap && mouseY>YKnap && mouseY <YKnap+HKnap) {
      LightOn = true;
      LightOff = false;
      }
    }
  }
}
