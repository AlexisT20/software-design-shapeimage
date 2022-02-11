//Alexis Thornton  12/2/21
//example of programmer usnig Adobe

PImage img;
int pointillize = 5; //breakup into random dots   //change value

void setup(){
 size(400,400);
 img = loadImage("sunflower.jpg");
 background(#A3FCED); //chnage
 
}

void draw(){  //each cycle through draw function one ellipse at a random location
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y * img.width;
  
  img.loadPixels();
  float r = red(img.pixels[loc]);
  float b = blue(img.pixels [loc]);
  float g = green(img.pixels [loc]);

noStroke();
fill(r,g,b, 50); //chnage fourth psoition value
ellipse(x,y,pointillize, pointillize);

}
