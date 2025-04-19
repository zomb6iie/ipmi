PImage img;

void setup() {
  size(800, 400);
  img = loadImage("foto.jpg");
  background(255);

  image(img, 0, 0);  // Imagen del lado izquierdo
  // rectangulo marron cuerpo
  fill(95, 66, 7);
  rect(500, 20, 150, 210, 20);
  noStroke();
  // rectangulo rojo boca
  fill(247, 0, 0);
  rect(525, 70, 100, 70, 10);
  noStroke();
  // rectangulo izquierdo marron
  fill(95, 66, 7);
  rect(500, 210, 60, 69, 5);
  // rectangulo derecho marron
  noStroke();
  fill(95, 66, 7);
  rect(591, 214, 60, 65, 5);  // rectangulo derecho
  // circulo negro izquierdo y derecho
  fill(0, 0, 0);
  noStroke();
  float eyeDiameter = 17;
  float eyeY = 50;
  ellipse(530, eyeY, eyeDiameter, eyeDiameter); // circulo izquierdo
  ellipse(620, eyeY, eyeDiameter, eyeDiameter); // circulo derecho
  // brazo derecho

  fill(95, 66, 7);  // Mismo color del cuerpo
  noStroke();
  beginShape();
  curveVertex(650, 100);   // pegado al costado derecho
  curveVertex(650, 100);
  curveVertex(680, 130);
  curveVertex(670, 180);   //lo baje un poco
  curveVertex(640, 200);   // Termina más cerca del cuerpo (como doblado)

  curveVertex(640, 200);   // Final duplicado para cerrar bien
  endShape();
  // rect izquierdo
  
  fill(95, 66, 7);
  noStroke();
  beginShape();
  curveVertex(500, 100);
  curveVertex(500, 100);
  curveVertex(460, 120);
  curveVertex(460, 40);
  curveVertex(490, 20);
  curveVertex(470, 20);
  endShape();
  // triangle
  
}
