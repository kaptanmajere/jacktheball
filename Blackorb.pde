  int blx = int(random(80,750));
  int bly = int(random(80,750));
  int blacksx=10;
  int blacksy=10;
class Blackorb{

  void show(){
bg.fill(0,0,0);
bg.stroke(0,0,0);
bg.strokeWeight(2);
bg.ellipse(blx,bly,blacksx,blacksy);  
}}
