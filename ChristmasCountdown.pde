int d = day();
int m = month();
int h = hour();
int k = minute();
int s = second();


void setup() {
  size(600,600);
};

void draw() {
  clear();
  int d = 24-day();
  int m = month()-12;
  int h = 23-hour();
  int k = 59-minute();
  int s = 59-second();
  background(#ED131A);
  textSize(36);
  fill(#0BE334);
  text("Seconds:" + s,10,40);
  text("Minutes:" + k,10,80);
  text("Hours:" + h,10,120);
  text("Days:" + d,10,160);
  text("Months:" + m,10,200);
  triangle(540, 540, 300, 540, 410, 450);
  triangle(540, 460, 300, 460, 410, 340);
  fill(#E57D0E);
  rect(390,540,40,60);

};
