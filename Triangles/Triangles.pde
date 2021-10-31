void setup()
{
  size(4512, 764);
  noSmooth();
  background(255, 255, 255);
  
  int xPos = 0;
  int yPos = 0;
  int size = 100;
  color fill = color(100, 0, 255);  //base color of the triangles
  
  while (yPos < height) {  //loop to create triangles
    noStroke();
    fill(fill, random(100, 255));
    triangle(xPos, yPos, xPos, yPos + size, xPos + size, yPos + size);
    fill(fill, random(100, 255));
    triangle(xPos, yPos, xPos + size, yPos, xPos + size, yPos + size);
    
    fill(fill, random(100, 255));
    triangle(xPos + size, yPos + size, xPos + size, yPos + size * 2, xPos + size * 2, yPos + size * 2);
    fill(fill, random(100, 255));
    triangle(xPos + size, yPos + size, xPos + size * 2, yPos + size, xPos + size * 2, yPos + size * 2);
    
    
    fill(fill, random(100, 255));
    triangle(xPos + size, yPos + size, xPos + size * 2, yPos + size, xPos + size * 2, yPos);
    fill(fill, random(100, 255));
    triangle(xPos + size, yPos + size, xPos + size, yPos, xPos + size * 2, yPos);
    
    fill(fill, random(100, 255));
    triangle(xPos, yPos + size * 2, xPos + size, yPos + size * 2, xPos + size, yPos + size);
    fill(fill, random(100, 255));
    triangle(xPos, yPos + size * 2, xPos, yPos + size, xPos + size, yPos + size);
    
    xPos = xPos + size * 2;  //draws the next set of 8 triangles
    
    if (xPos > width) {  //moves to the next row once one is complete
      xPos = 0;
      yPos = yPos + size * 2;
    }
  }
}

void draw() 
{
  save("trinagles.png"); // save the result as an image called "trinagles.png" in the sketch folder
}
