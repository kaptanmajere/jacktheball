import processing.sound.*; //<>//
SoundFile music;
SoundFile death;
SoundFile ping;
SoundFile lifeup;
SoundFile lifedown;
SoundFile whoosh;
PGraphics bg, reds;
int health = 1;
int redxx, redyy;
int point = 0;
int blackflag=0;
int dangerzone=1;
int br=255;
int bgr=255;
int bb=255;
int mflag=0;
int[]  PlayerColors = new int[3];
Queue prq, pgq, pbq;
BinarySearchTree bs;
Redorb redorb =new Redorb();
Greenorb greenorb;
Purpleorb purpleorb =new Purpleorb();
Blackorb blackorb =new Blackorb();
Blueorb blueorb =new Blueorb();
Orangeorb orangeorb=new Orangeorb();
int musflag=0;
void setup() {
  size(800, 800);
  background(br, bgr, bb);
  bg = createGraphics(width, height);
  reds = createGraphics(width, height);
  music = new SoundFile(this, "music.mp3");
  death = new SoundFile(this, "death.mp3");
  ping = new SoundFile(this, "ping.mp3");
  lifeup = new SoundFile(this, "lifeup.mp3");
  lifedown = new SoundFile(this, "lifedown.wav");
  whoosh = new SoundFile(this, "whoosh.mp3");
  music.loop(1, 0.1);

  prq = new Queue(5);
  pgq = new Queue(5);
  pbq = new Queue(5);

  prq.enqueue(255);
  pgq.enqueue(255); //Yellow
  pbq.enqueue(0);

  prq.enqueue(255);
  pgq.enqueue(110); //Pink
  pbq.enqueue(221);

  prq.enqueue(148);
  pgq.enqueue(88); //Brown
  pbq.enqueue(10);

  prq.enqueue(126);
  pgq.enqueue(144); //Grey
  pbq.enqueue(171);

  prq.enqueue(12);
  pgq.enqueue(99); //Petrolium Green
  pbq.enqueue(122);
}

void draw() {
  reds.beginDraw();
  bg.beginDraw();
  bg.background(br, bgr, bb);
  Player myPlayer = new Player();
  bs = new BinarySearchTree();

  greenorb = new Greenorb();
  orangeorb.show();
  purpleorb.show();
  blackorb.show();
  redorb.show();
  blueorb.show();
  movement(myPlayer);
  blackDistance();
  if (collide(purpx, purpy, posx, posy, purplesx, 50)==true) {
    purpx=int(random(80, 750));
    purpy=int(random(80, 750));
    purpleorb.show();
    speed = speed+1;
    blackflag++;
    whoosh.play();
  }
  if (collide(orx, ory, posx, posy, orsx, 50)==true) {
    orx=int(random(80, 750));
    ory=int(random(80, 750));
    orangeorb.show();
    redsx+=6;
    redsy+=6;
    dangerzone++;
  }
  if (collide(bluex, bluey, posx, posy, bluesx, 50)==true) {
    bluex=int(random(80, 750));
    bluey=int(random(80, 750));
    blueorb.show();
    point +=((speed*0.4)+(dangerzone*0.2))/17*1000;
    ping.play();
  }
  if (collide(blx, bly, posx, posy, blacksx, 50)==true) {
    blx=-10;
    bly=-10;
    blackorb.show();
    health=-500;
  }
  if (collide(greenx, greeny, posx, posy, greensx, 50)==true) {
    health ++;
    greenx=int(random(80, 750));
    greeny=int(random(80, 750));
    greenorb = new Greenorb();
    lifeup.play();
  }
  if (collide(redx, redy, posx, posy, redsx, 50)==true) {
    reds.background(br, bgr, bb, 0);
    redx=int(random(80, 750));
    redy=int(random(80, 750));
    redorb.show();
    health--;
    lifedown.play();
  }
  if (blackflag%13>6) {
    blx=int(random(80, 750));
    bly=int(random(80, 750));
    blackorb.show();
    blackflag=0;
    blackDistance();
  }

  if (health <=0) {
    reds.background(0, 0, 0);
    music.stop();
    if (musflag==0) {
      death.play(1, 0, 0.4);
      musflag=1;
    }
    reds.fill(255, 255, 0);
    reds.textSize(100);
    reds.textAlign(CENTER);
    reds.text("GAMEOVER", width/2, height/2);
    reds.fill(0, 255, 255);
    reds.textSize(20);
    reds.fill(255, 255, 255);
    reds.text("please enter (( T )) to restart", width/2, height*9/10);
    reds.textAlign(RIGHT);
    reds.textSize(30);
    reds.text("Your score was", width/2, height*4/5);
    reds.fill(br, bgr, bb);
    reds.textAlign(CENTER);
    reds.textSize(150);
    reds.text(int(point), (width/2)+100, height*4/5);
    if (key=='t') {
      health=1;
      reset();
    }
  }

  if (key=='p') {
    music.stop();
    mflag=0;
  }
  if (key=='o'&&mflag==0) {

    music.loop(1, 0.1);
    mflag=1;
  }

  bgBST(point, bs);
  BackgroundChoose(bs);  

  if (keyPressed) {
    if (key=='q') {
      PlayerColors = ColorQueue(prq, pgq, pbq);
      pr=PlayerColors[0];
      pg=PlayerColors[1];
      pb=PlayerColors[2];
      if (colorcounter==5) {
        colorcounter=0;
      }
      colorcounter++;
      keyPressed=false;
    }
  }
  Display();

  reds.endDraw();
  bg.endDraw();
  image(bg, 0, 0);

  image(reds, 0, 0);
}
