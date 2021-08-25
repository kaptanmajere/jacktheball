int greenx = int(random(80,750));
int greeny = int(random(80,750));
int greensx=10;
int greensy=10;
class Greenorb{
  public Greenorb(){
bg.fill(0,255,0);
bg.stroke(0,0,0);
bg.strokeWeight(2);
bg.ellipse(greenx,greeny,greensx,greensy);  
}

}
