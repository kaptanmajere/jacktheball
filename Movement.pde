void movement(Player main) {
if(keyCode==UP||keyCode==DOWN||keyCode==LEFT||keyCode==RIGHT){
  switch(keyCode) {

  case UP:
    main.moveUp();
    break;

  case DOWN:
    main.moveDown();
    break;

  case LEFT:
    main.moveLeft();
    break;

  case RIGHT:
    main.moveRight();
    break;

  }
  }
  
}
