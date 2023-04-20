
		
	float x = 0;
	float y = 0;
	int spacing = 30;


	public void setup() {
    size(720, 480); 
    noSmooth();
	  background(0);
	}

	public void draw() {
	  stroke(255);
	  
	  if(random(3) < 0.5) {
	    line(x, y, x+spacing, y);
	  }
	  
	  else if(random(3) > 0.5 && random(3) < 1){
	    line(x, y + spacing, x+spacing, y);
	  }
	  
	  else if(random(3) > 1 && random(3) < 2) {
	    line(x, y, x+spacing, y+spacing);
	  }
	  
	  else {
	    line(x, y, x, y+spacing);
	  }
	  
	  if(x > width) {
	    x = 0 - spacing;
	    y = y + spacing;
	  }

	  x = x + spacing;
	  
	  
	  if(keyPressed) {
	    background(0);
	    y = 0;
	    x = 0;
	  }
	  
	}
	
