
PImage imagen;

void setup() {
  size(1000, 600); 
  noStroke();
	imagen = loadImage("testImage.jpg");
	imagen.resize(width, height);				
	//background(255);
	//background(205, 255, 153);
	background(imagen);
	
	//PUNTO
	ellipse(150, 100, 20, 20);
	point(150, 100);	
		
		//LINEA ROJA
	int rojo = color(255,0,0);
		stroke(rojo);
		line(50, 150, 250, 150);
		
		//TRIANGULO GRIS
		fill(100);
		stroke(200);
		triangle(60, 250, 90, 190, 120, 250);
		
		//CIRCULOS VERDES
		fill(205, 255, 153);
		stroke(0, 0, 255);
		ellipse(200, 220, 50, 50);
		ellipse(90, 300, 50, 30);
		
		//RECTANGULO EN HUE
		colorMode(HSB, 360, 100, 100);
		fill(315, 90, 75);
		stroke(0);
		rect(177, 277, 45, 45, 9);
		
		//RECTANGULO EN RGB
		colorMode(RGB);
		fill(205, 90, 50);
		rect(70, 350, 45, 45);
		
		//RECTANGULO EN RGB ORIGINAL
		colorMode(RGB, 255, 255, 255);
		fill(245, 215, 110);
		rect(177, 350, 45, 45, 3, 6, 12, 18);
		
		//RECTANGULO EN RGB OTRO RANGO
		colorMode(RGB, 10, 10, 10, 10);
		fill(5, 2, 9, 10);
		ellipse(105, 450, 50, 50);
		
		//RECTANGULO TRANSPARENTE EN RGB OTRO RANGO
		fill(2, 9, 5, 6);
		quad(100, 460, 190, 440, 169, 490, 90, 500);
		colorMode(RGB, 255, 255, 255, 255);
		
		//ARCOS
		fill(255);
		stroke(0);
		arc(380, 100, 70, 70, 0, HALF_PI);
		arc(380, 400, 70, 70, 0, PI-QUARTER_PI, OPEN);
		arc(380, 200, 70, 70, 0, (PI + QUARTER_PI), CHORD);
		arc(380, 300, 70, 70, 0, (PI + QUARTER_PI), PIE);
		
		//SOBREPUESTO NORMAL
		rect(530, 50, 100, 100);
		rect(560, 80, 100, 100);
		
		//SOBREPUESTO MEDIO TRANSPARENTE
		fill(0, 0, 255);
		rect(530, 240, 100, 100);
		fill(255, 0, 0, 230);
		stroke(0, 0, 0, 15);
		rect(560, 270, 100, 100);
		
		//TRANSPARENTE
		fill(0, 0, 255);
		stroke(0);
		rect(530, 440, 100, 100);
		fill(255, 0, 0, 100);
		stroke(0, 0, 0, 150);
		rect(560, 470, 100, 100);
		
		//SIN FONDO
		fill(255);
		stroke(0);
		rect(730, 50, 100, 100);
		noFill();
		rect(760, 80, 100, 100);
		
		//SIN CONTORNO
		fill(255);
		stroke(0);
		rect(730, 240, 100, 100);
		noStroke();
		rect(760, 270, 100, 100);
		
		//SIN FIGURA
		fill(255);
		stroke(0);
		rect(730, 440, 100, 100);
		noFill();
		noStroke();
		rect(760, 470, 100, 100);
 
}
		
