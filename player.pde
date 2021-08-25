int posx=width/2;
int posy=height/2;
int speed =0;
int pr=255;
int pg=255;
int pb=0;
public class Player{
public Player(){
bg.fill(pr,pg,pb);
bg.stroke(0);
bg.strokeWeight(2);
bg.ellipse(posx,posy,50,50);
}
void s(){
bg.fill(255,255,0);
bg.stroke(0);
bg.strokeWeight(2);
bg.ellipse(posx,posy,50,50);
}

void moveLeft(){  
posx-=(5+speed);
}
void moveRight(){
posx+=(5+speed);
}
void moveUp(){
posy-=(5+speed);
}
void moveDown(){
posy+=(5+speed);
}

}
