void Display(){
    bg.fill(0);
    bg.textSize(20);
    bg.text("Health =",680,770);
    bg.text(health,770,770);
    bg.text("Speed =",680,740);
    bg.text(speed+1,770,740);
    bg.text("Danger Zone =",620,710);
    bg.text(dangerzone,770,710);
    bg.stroke(0);
    bg.strokeWeight(5);
    
    bg.textSize(130);
    bg.fill(0,0,0);
    bg.text(point,width/2,height/2);
    bg.textSize(120);
    bg.fill(0,0,255);
    bg.textAlign(CENTER);
    bg.text(point,width/2,height/2);
  }
