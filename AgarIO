int x;
int y;
int s;
int e;
FloatList xDots;
FloatList yDots;
FloatList xKill;
FloatList yKill;

void setup() {
ellipseMode(RADIUS);
size(1280, 800, P2D);
y = 350;
x = 350;
s = 20;
xDots = new FloatList();
yDots = new FloatList();
xKill = new FloatList();
yKill = new FloatList();

for (int l = 0; l < 40; l = l+1) {
  xDots.append(random(0,1280));
  yDots.append(random(0,800));
};
for (int l = 0; l < 10; l = l+1) {
  xKill.append(random(0,1280));
  yKill.append(random(0,800));
};
};

void draw() {
  if (mouseY > y) {
    y += 2;
  };
  if (mouseY < y) {
    y += -2;
  };
  if (mouseX > x) {
    x += 2;
  };
  if (mouseX < x) {
    x += -2;
  };
  clear();
  background(#C3C3C3);
  textSize(15);
  text("Size: " + s, 10, 20);
  text("FPS: " + frameRate, 10, 40);
  fill(#81A2D3);
  ellipse(x, y, s, s);
  
  for (int l = 0; l < xDots.size(); l = l+1) {
    fill(#28DE3B);
    ellipse(xDots.get(l), yDots.get(l), 10, 10);
};
  for (int l = 0; l < xKill.size(); l = l+1) {
    fill(#EA2626);
    ellipse(xKill.get(l), yKill.get(l), 10, 10);
};
  for (int l = 0; l < xDots.size(); l = l+1) {
    if(s > abs(xDots.get(l) - x)) {
      if(s > abs(yDots.get(l) - y)) {
      s += 2;
      e = round(l/2);
      xDots.set(l,random(0,1280));
      yDots.set(l,random(0,800));
      xKill.set(e,random(0,1280));
      yKill.set(e,random(0,800));
    };
    };
}; 
   for (int l = 0; l < xKill.size(); l = l+1) {
     if(s > abs(xKill.get(l) - x)) {
       if(s > abs(yKill.get(l) - y)) {
        clear();
        delay(2000);
        s = 20;
        x = 350;
        y = 350;
        xDots.clear();
        yDots.clear();
        xKill.clear();
        yKill.clear();
        for (int b = 0; b < 40; b = b+1) {
  xDots.append(random(0,1280));
  yDots.append(random(0,800));
};
for (int b = 0; b < 10; b = b+1) {
  xKill.append(random(0,1280));
  yKill.append(random(0,800));
};
      };
    };
}; 
};
