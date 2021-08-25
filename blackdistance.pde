void blackDistance(){
if(collide(redx,redy,blx,bly,redsx,10)==true){
 blx=int(random(80,750));
  bly=int(random(80,750));
  blackorb.show();
}
if(collide(bluex,bluey,blx,bly,10,10)==true){
 blx=int(random(80,750));
  bly=int(random(80,750));
  blackorb.show();
}
if(collide(greenx,greeny,blx,bly,10,10)==true){
 blx=int(random(80,750));
  bly=int(random(80,750));
  blackorb.show();
}

if(collide(purpx,purpy,blx,bly,10,10)==true){
 blx=int(random(80,750));
  bly=int(random(80,750));
  blackorb.show();
}
}
