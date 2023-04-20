
	int i = 0;
	int j = 0;
	float r;
	int slash = 0;
	int gridSize = 30;

	int counterX = 0;
	int counterY = 0;
	int tempFrame;
	boolean loopit = true;

	public void setup() {
    size(720, 480); 
    noSmooth();
	  colorMode(RGB);
	  background(55, 53, 165);
	  color(113, 116, 223);
	  noStroke();
	  noSmooth();
	  frameRate(60);
	}

	public void draw(){

	  PFont font;	  
	  font = createFont("PetMe64.ttf", 32);	  

	  startScreen();
	  
	  if (frameCount > 240) {
	    fill(113, 116, 223);
	    textFont(font, gridSize);
	    int counterX = frameCount % (width/gridSize);
	    if (counterX == 0) {
	      counterY = counterY + 1;
	    } 

	    r = (int)(random(1, 10));
	    if (r <= 5) {
	      slash = 9585;
	    }
	    if (r > 5) {
	      slash = 9586;
	    }
	    fill(113, 116, 223);
	    text((char)(slash), counterX*gridSize, counterY*gridSize-5);
	  }
	  
	  if (counterX == (width/gridSize) && counterY == (height/gridSize)) {
	      int tempFrame = frameCount;
	      println(tempFrame);
	    }
	    if (counterY == 22) {
	      counterY = 21;
	    }
	    if (frameCount == (tempFrame + 240)) {
	       frameCount = 241;
	    }
	}

	public void startScreen() {
		PFont font;	  
		 font = createFont("PetMe64.ttf", 32);	  
	  if (frameCount < 240) {
	    textFont(font, gridSize/2);
	    fill(113, 116, 223);
	    text("10 PRINT CHR$(205.5+RND(1)); : GOTO 10", 60, 200);
	    text("PLEASE CLICK TO START", 60, 240);
	    if (frameCount % 60 >= 30) {
	      fill(55, 53, 165);
	      text("PLEASE CLICK TO START", 60, 240);
	    }
	  }
	  if (frameCount == 239) {
	    frameCount = 0;
	  }
	 

	}

	
	public void mouseClicked() {
	  if (frameCount < 240) {
	    frameCount = 241; 
	    background(55, 53, 165);
	    loopit = true;
	  }
	  if (frameCount > 260) {
	    background(55, 53, 165);
	    frameCount = 1; 
	    loop();
	    counterX = 0;
	    counterY = 0;
	  }
	}
