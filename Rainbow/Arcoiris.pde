
		
	public void setup() {
    size(1000, 600); 
    noSmooth();
		int red = 255, green = 0, blue = 0;
		int number = 1; boolean change = false; int pixel = 0;
		int colors = 255*6;
		int sizeAdjust = ((width*height)/colors);
		background(255);
		for (int i = 0; i < height; i++){
			for (int j = 0; j < width; j++){
				
				pixel++;
				if (pixel == sizeAdjust){
					pixel = 0;
					change = true;
				} else {
					change = false;
				}
				
				if (change == true){
					if (number == 1){
						green++; //De rojo a amarillo
						if (green > 255){ number = 2; }
					} else if (number == 2){
						red--; //De amarillo a verde
						if (red < 0){ number = 3; }
					} else if (number == 3){
						blue++; //De verde a cian
						if (blue > 255){ number = 4; }
					} else if (number == 4){
						green--; //De cian a azul
						if (green < 0){ number = 5; }
					} else if (number == 5){
						red++; // De azul a rosa
						if (red > 255){ number = 6; }
					} else if (number == 6){
						blue--; //De rosa a rojo
						if (blue < 0){ number = 1; }
					}
				}
				
				stroke(red, green, blue);
				point(j,i);
				
				/*
				This will actually draw every color
				But it shows lines because of the for nesting.
				
				blue++;
				if (blue > 255){
					blue = -1;
					green++;
					if (green > 255){
						green = 0;
						red++;
						if (red > 255){
							red = 0;
						}
					}
				}
				
				*/

			}
		}
	}
