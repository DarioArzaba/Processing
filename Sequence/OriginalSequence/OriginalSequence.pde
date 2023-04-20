
	public void setup() {
    size(1000, 600); 
    noSmooth();
	  background(55, 53, 165);
	  stroke(130, 150, 255);
	  strokeWeight(5);
	}

	public void draw(){
		noLoop();
		line(50, 50, 75, 75);
		
		
		for (int x=50; x < width-50; x += 25) {

			for (int y=50; y < height-50; y += 25) {
			
				if (random(0,1) < 0.5) {
		          line(x,y, x+25, y+25);
		        } else {
		          line(x, y+25, x+25, y);
		        }
				
		    }
		}
		
		
		
	}
	
