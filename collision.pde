boolean collide(int x1, int x2, int y1, int y2,int s1,int s2) {

  if (((int(dist(x1, x2, y1, y2))-((s1+s2)/2)) > 0)) {

    return false;
  } else 
  return true;
}
