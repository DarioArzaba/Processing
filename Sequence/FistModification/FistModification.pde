
		
	int c, x=0;
	int y=-1;
	PImage s;
	public void setup() {
    size(720, 480); 
    noSmooth();
	    frameRate(20);
	}
	
	public void draw() {
	    c=(int)(random(2))*5;
	    line(x+c, y, x+5-c, y+5);
	    x+=5;
	    if (x>95) {
	        x=0;
	        y+=5;
	    }
	    if (y>95) {
	      y=94;
	      s = get();
	      background(204);
	      image(s, 0, -5);
	    }
	}
	
