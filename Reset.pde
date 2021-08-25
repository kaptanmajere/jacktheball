void reset() {
  frameCount = -1;
  speed=0;
  dangerzone=1;
  point=0;
  br=255;
  bgr=255;
  bb=255;
  redsx=25;
  redsy=25;
  posx=width/2;
  posy=height/2;
  death.stop();
  blx = int(random(80, 750));
  bly = int(random(80, 750));
}
