class raindrop {

  int x;  //x pos
  int y;  //y pos
  float l;  //length
  int s;  //speed

  int c;

  PImage Image;
  int loc;

  //constructor
  raindrop() {

    x=int(random(width));
    y=int(random(-500, 0));
    l=random(7, 14);
    s=int(random(3, 20));
    c=color(255,0,0);
    //loc=x+y*width;
    // mountains=loadImage("mountainimage.jpg");
  }


  void render() {
    stroke(138, 43, 226);
    line(x, y, x, y+l);
  }

  void fall() {
    y=y+s;

    if (y>=height) {
      y=int(random(-500, 0));
    }
  }
}
