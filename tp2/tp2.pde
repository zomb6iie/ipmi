// Lopez Umi
// trabajo practico N2 variables

PImage img1, img2, img3;
PFont miFuente;

int pantalla = 1;
float velocidad = 1.2;

float posY1 = -120;
float posY2 = -100;
float posY3 = -100;

int colorRelleno = 200;

void setup() {
size(500, 500);
img1 = loadImage("mimagen.jpg");
img2 = loadImage("mimagen2.jpg");
img3 = loadImage("mimagen3.jpg");

miFuente = loadFont("Arial-BoldMT-32.vlw");
textFont(miFuente);
textFont(miFuente);
textSize(14);  
}

void draw() {
background(0);
fill(255);

if (pantalla == 1) {
image(img1, (width - img1.width) / 2, (height - img1.height) / 2);
String linea1 = "Coraline es una novela de fantasía oscura";
String linea2 = "escrita por Neil Gaiman. La historia sigue";
String linea3 = "a una niña llamada Coraline Jones, quien se muda";
String linea4 = "a una casa antigua donde encuentra una puerta secreta.";
String linea5 = "Esa puerta la lleva a un mundo alternativo.";

float x1 = (width - textWidth(linea1)) / 2;
float x2 = (width - textWidth(linea2)) / 2;
float x3 = (width - textWidth(linea3)) / 2;
float x4 = (width - textWidth(linea4)) / 2;
float x5 = (width - textWidth(linea5)) / 2;

text(linea1, x1, posY1);
text(linea2, x2, posY1 + 30);
text(linea3, x3, posY1 + 60);
text(linea4, x4, posY1 + 90);
text(linea5, x5, posY1 + 120);
 posY1 = posY1 + velocidad;
 
if (posY1 > height + 50) {
pantalla = 2;
      posY2 = -100; // reinicio
    }
  }

else if (pantalla == 2) {
  image(img2, (width - img2.width) / 2, (height - img2.height) / 2);

  String linea1 = "PERSONAJES:";
  String linea2 = "Coraline";
  String linea3 = "los padres";
  String linea4 = "los padres del otro mundo";
  String linea5 = "los vecinos y el gato";

  float x1 = (width - textWidth(linea1)) / 2;
  float x2 = (width - textWidth(linea2)) / 2;
  float x3 = (width - textWidth(linea3)) / 2;
  float x4 = (width - textWidth(linea4)) / 2;
  float x5 = (width - textWidth(linea5)) / 2;

  text(linea1, x1, posY2);
  text(linea2, x2, posY2 + 30);
  text(linea3, x3, posY2 + 60);
  text(linea4, x4, posY2 + 90);
  text(linea5, x5, posY2 + 120);

  posY2 = posY2 + velocidad;

  if (posY2 > height + 50) {
    pantalla = 3;
    posY3 = -100;
  }

  }

   else if (pantalla == 3) {
    image(img3, (width - img3.width) / 2, (height - img3.height) / 2);

    String linea1 = "Coraline descubre que el mundo perfecto";
    String linea2 = "esconde una realidad oscura.";
    String linea3 = "Gracias a su valentía, logra enfrentar";
    String linea4 = "a sus miedos y regresar a casa.";
    String linea5 = "FIN";

    float x1 = (width - textWidth(linea1)) / 2;
    float x2 = (width - textWidth(linea2)) / 2;
    float x3 = (width - textWidth(linea3)) / 2;
    float x4 = (width - textWidth(linea4)) / 2;
    float x5 = (width - textWidth(linea5)) / 2;

    text(linea1, x1, posY3);
    text(linea2, x2, posY3 + 30);
    text(linea3, x3, posY3 + 60);
    text(linea4, x4, posY3 + 90);
    text(linea5, x5, posY3 + 120);

    posY3 = posY3 + velocidad;

    fill(colorRelleno);
    rect(180, 420, 140, 40);
    fill(0);
    
    if (mousePressed &&
        mouseX > 180 && mouseX < 320 &&
        mouseY > 420 && mouseY < 460) {
      pantalla = 1;
      posY1 = -120;
      posY2 = -100;
      posY3 = -100;
    }

    if (mousePressed &&
        mouseX > 180 && mouseX < 320 &&
        mouseY > 420 && mouseY < 460) {
      pantalla = 1;
      posY1 = -120;
    }
  }
}
