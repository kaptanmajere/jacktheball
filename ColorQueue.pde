int colorcounter=0;
int RR, GG, BB;
int[] colors = new int[3];
int[] finish = new int[1];


int[] ColorQueue(Queue R, Queue G, Queue B) {

    if (colorcounter==0) { //Yellow
      RR = R.peek();
      BB = B.peek();
      GG = G.peek();

      R.dequeue();
      B.dequeue();
      G.dequeue();

      R.enqueue(255);
      B.enqueue(255);
      G.enqueue(0);
      colors[0]=RR;
      colors[1]=GG;
      colors[2]=BB;
    }
    if (colorcounter==1) { //Pink
      RR = R.peek();
      BB = B.peek();
      GG = G.peek();

      R.dequeue();
      B.dequeue();
      G.dequeue();

      R.enqueue(255);
      B.enqueue(110);
      G.enqueue(221);

      colors[0]=RR;
      colors[1]=GG;
      colors[2]=BB;
    }
    if (colorcounter==2) { //Grey
      RR = R.peek();
      BB = B.peek();
      GG = G.peek();

      R.dequeue();
      B.dequeue();
      G.dequeue();

      R.enqueue(126);
      B.enqueue(144);
      G.enqueue(171);

      colors[0]=RR;
      colors[1]=GG;
      colors[2]=BB;
    }
    if (colorcounter==3) { //Brown
      RR = R.peek();
      BB = B.peek();
      GG = G.peek();

      R.dequeue();
      B.dequeue();
      G.dequeue();

      R.enqueue(148);
      B.enqueue(88);
      G.enqueue(10);

      colors[0]=RR;
      colors[1]=GG;
      colors[2]=BB;
    }
    if (colorcounter==4) { //Petrolium Green
      RR = R.peek();
      BB = B.peek();
      GG = G.peek();

      R.dequeue();
      B.dequeue();
      G.dequeue();

      R.enqueue(12);
      B.enqueue(99);
      G.enqueue(122);

      colors[0]=RR;
      colors[1]=GG;
      colors[2]=BB;
    }

      return colors;

 }
