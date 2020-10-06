size(960,720);

PImage img;
img = loadImage("img.jpg");

tint(240,240,250,220);
image(img,0,0);


float alpha=255;
for(int x=0;x<width/2; x+=width/400){
  smooth();
  noStroke();
  fill(255,alpha);
  rect(x,0,width/400,height);
  alpha-=1.4;
}

alpha=0;

for(int x=width/2;x<width; x+=width/400){
  smooth();
  noStroke();
  fill(0,alpha);
  rect(x,0,width/400,height);
  alpha+=1.4;
}

//tint(255,50);
//image(img,0,0);

noStroke();
smooth();

for(int a=0; a<40; a++){
  float r = random(30,100);
  float x = 100+ width/2;
  float y = random(height);
  fill (random(200,220),random(230,235),random(235,255),10+a);
  ellipse(x+12*a,y,r,r);}
  //ellipse(x+16*a,y,r,r);}


PFont f1;
f1 = loadFont("BodoniMT-Italic-64.vlw");

char str[]={'w','a','l','k',' ','o','n',' ','t','h','e',' ','c','l','o','u','d','s'};
int i=0;
for(int x=10;x<=width-52;x+=52){
  fill(25+12*i,25+12*i,80+10*i,50+20*i);
  textFont(f1);
  text(str[i], x,random(600,height-50));
  i++;}
  
saveFrame("Mid_201710791_jihyeryu.png");
  


  
