//Keep in mind! My computers name is Gilbert. So, when there is a request to open a file, switch the name
//from gilbert to the name of your computer!

PImage img;
PImage sorted;
int index = 0;
int total;  // \/\/\/\/\/ File Name HERE
String name = "Old.jpg";
void setup() {
  rectMode(CORNERS);
  img = loadImage(name);
  if (img == null) {
    open("/Users/gilbert/Documents/Processing/PixelSort");
    println("Error! You must first select a file.");
    exit();
  };
  if (img.width < 145) {
    open("/Users/gilbert/Documents/Processing/PixelSort");
    println("Error! Image width must be over 145 pixels.");
    exit();
  };
  if (img.height < 45) {
    open("/Users/gilbert/Documents/Processing/PixelSort");
    println("Error! Image height must be over 45 pixels.");
    exit();
  };
  size(img.width*2+10,img.height);
  sorted = createImage(img.width, img.height, RGB);
  sorted = img.get();
  sorted.loadPixels();
  total = img.height * img.width;
};

void draw() {
  background(0);
  for (int n = 0; n < img.width/10; n++) {
    total--;
    if (total == 0) {
      save(name + " Sorted");
      open("/Users/gilbert/Documents/Processing/PixelSort/"+name+" Sorted");
      exit();
    };
    float record = -1;
    int selectedPixel = index;
    for (int j = index; j < sorted.pixels.length; j++) {
      color pix = sorted.pixels[j];
      //Sort Type:
      //float b = red(pix) * green(pix) * blue(pix); //Total Color Value
      //float b = brightness(pix);
      //float b = hue(pix);
      //float b = green(pix);
      //float b = red(pix);
      //float b = blue(pix);
      //float b = alpha(pix);
      float b = saturation(pix);
      if (b > record) {
        selectedPixel = j;
        record = b;
              color temp = sorted.pixels[index];
    sorted.pixels[index] = sorted.pixels[selectedPixel];
    sorted.pixels[selectedPixel] = temp;
      };
    };
    if (index < sorted.pixels.length - 1) {
      index ++;
    };
    sorted.updatePixels();
    image(img, 0, 0);
    image(sorted, width/2+10, 0);
  };
  sorted.updatePixels();
  image(img, 0, 0);
  image(sorted, width/2+10, 0);
  rect(0,0,130,30);
  fill(0);
  noStroke();
  text("FPS: "+frameRate,5,12);
  text("Left: "+total,5,26);
  fill(255,255,255);
};
