// Event Horizon Starter
// Zane Cochran
// 27 March 2022
float whichColor;
boolean isBroadcast = false;       // Toggles Visualization On/Off
String ipAddress = "10.40.4.115";  // Event Horizon IP Address
raindrop[] raindrops= new raindrop[1000];

void setup() {
  size(480, 480);
  initBroadcast();
  initAudio();
  for (int i=0; i<raindrops.length; i++) {
    raindrops[i]= new raindrop();
  }
}

void draw() {
  background(0);
  //getAudio();
  //getWave();
  for (int i=0; i<raindrops.length; i++) {
    // fill(150,255,255);
      raindrops[i].render();
      raindrops[i].fall();
  
  getLoud();
  if (soundSize > 25) {
   // fill(240,255,255);
    whichColor = random(0,255); //(whichColor = (whichColor + 5) % 255); 
   // whichColor = (whichColor + 5) % 255; 
    colorMode(HSB, whichColor);
   // fill(whichColor); //hue, saturation, brightness
   
   // delay(3000);
  }
// fill(whichColor);
  }
  //circle(width/2, height/2, soundSize);

  if (isBroadcast) {
    broadcast();
  }
}
