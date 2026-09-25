void setup() { 
  size(400, 400); 
  background(0, 0, 0); 
  rectMode(CENTER); 
  noLoop(); 
} 

void draw() { 
  background(0, 0, 0); 
  for (int i = 0; i < 401; i += 50) { 
    for (int j = 0; j < 401; j += 100) { 
      Die myDice = new Die(i, j); 
      myDice.show(); 
    } 
  } 
} 

void mousePressed() { 
  redraw(); 
} 

class Die { 

  int dots, mySize, myX, myY; 

  Die (int x, int y) { 
    dots = (int)(Math.random()*6)+1; 
    mySize = (int)(Math.random()*41)+10; 
    myX = x; 
    myY = y; 
  } 

  void roll() { 
    dots = (int)(Math.random()*5)+1; 
  } 
  
  void show() { 

    fill(255); 
    noStroke(); 
    rect(myX, myY, mySize, mySize, 10); 
    
    fill(0); 
    strokeWeight(2); 
    float dotSize = 0.165*mySize; 
    float halfDie = 0.5*mySize; 
    float margin = 0.3*mySize; 
    ArrayList<String> arr = new ArrayList(); 
    arr.add("1"); 
    arr.add("25"); 
    arr.add("125"); 
    arr.add("2345"); 
    arr.add("12345"); 
    arr.add("234567"); 
    
    if (arr.get(dots-1).contains("1")) 
      ellipse(myX, myY, dotSize, dotSize); //middle-center 
    if (arr.get(dots-1).contains("2")) 
      ellipse(myX-halfDie+margin, myY-halfDie+margin, dotSize, dotSize); //left-top 
    if (arr.get(dots-1).contains("3")) 
      ellipse(myX+halfDie-margin, myY-halfDie+margin, dotSize, dotSize); //right-top 
    if (arr.get(dots-1).contains("4")) 
      ellipse(myX-halfDie+margin, myY+halfDie-margin, dotSize, dotSize); //left-bottom 
    if (arr.get(dots-1).contains("5")) 
      ellipse(myX+halfDie-margin, myY+halfDie-margin, dotSize, dotSize); //right-bottom 
    if (arr.get(dots-1).contains("6")) 
      ellipse(myX, myY-halfDie+margin, dotSize, dotSize); //middle-top 
    if (arr.get(dots-1).contains("7")) 
      ellipse(myX, myY+halfDie-margin, dotSize, dotSize); //middle-bottom 

  } 

} 
