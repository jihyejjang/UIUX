float x= 0;
float y= 455;
float ys = 0.12;
float dir = 1;

float s=0.6;
int direction =1;
int flag = 0;

float a1 = 100.0;
float a1s = 3.0;
float a1dir=1;

float a2 = 150.0;
float a2s= 6.0;
float a2dir=1;

float xe=100.0;
float xs=2.5;
float edir=1;


void setup(){
  size(900,600);
  background(0);
  noStroke();

}

void sun(){
  //sun
  fill(255,255,144,60);
  ellipse(450,300,350,350);
  fill(255,255,90,100);
  ellipse(450,300,300,300);
  fill(255,233,36,150);
  ellipse(450,300,260,260);
  fill(255,187,0);
  ellipse(450,300,230,230);

  //fill(0);
  //ellipse(430,280,10,20);
  //ellipse(470,280,10,20);
  
  //fill(150,0,0);
  //arc(450,310,30,60,radians(0),radians(180));
}

void island(){
  fill(255,202,108);
  ellipse(450,450,700,350);}
  
void bird(){
  fill(255,255,198);
  ellipse(700,200,50,50);
  ellipse(730,200,50,50);
  fill(255,153,158);
  ellipse(695,210,50,50);
  ellipse(735,210,50,50);
}
  
void cloud(){
  ellipse(170,200,50,50);
  ellipse(130,200,50,50);
  ellipse(120,170,50,50);
  ellipse(150,160,50,50);
  ellipse(180,170,50,50);
} 
void beach(){
  
  fill(255,153,158);
  rect(0,0,900,600);
  
  pushMatrix();
  bird();
  translate(80,10);
  bird();
  popMatrix();
  
  //fill(255,255,198);
  //pushMatrix();
  //cloud();
  //translate(-150,-50);
  //cloud();
  //translate(200,-80);
  //cloud();
  //translate(400,80);
  //cloud();
  //translate(200,-60);
  //cloud();
  //translate(100,100);
  //cloud();
  //popMatrix();
  
  //sunshine
  a1 += a1s * a1dir;
  if ( (a1>200) || (a1<50) ){ a1dir = -a1dir;}
  a2 += a2s * a2dir;
  if ( (a2>250) || (a2 < 100) ){ a2dir = -a2dir;}
    
  fill(255,185,185,a1);
  ellipse(450,200,300,300);
  fill(255,144,144,a2);
  ellipse(450,200,240,240);
  fill(255,90,94);
  ellipse(450,200,200,200);
  
  palmTree();
  island();
  tube();

  
  //horizon
  fill(0,180,219);
  ellipse(450,y,1500,200);
  y+= ys *dir;
  if ((y<450)||(y>465)){
  dir=-dir;}
  
  //wave
  //Layer1 : skyblue
  fill(0,144,183);
  rect(0,400,900,300);
  ellipse(x-1100,410,200,50);
  ellipse(x-700,410,200,50);
  ellipse(x-300,410,200,50);
  ellipse(x+100,410,200,50);
  ellipse(x+500,410,200,50);
  ellipse(x+900,410,200,50);
  
  //Layer2 : darkblue
  fill(0,126,165);
  rect(0,440,900,300);
  ellipse(x-800,450,200,50);
  ellipse(x-400,450,200,50);
  ellipse(x,450,200,50);
  ellipse(x+400,450,200,50);
  ellipse(x+800,450,200,50);
  
  //Layer3: skyblue2

  fill(0,144,183);
  ellipse(x-1000,430,230,50);
  ellipse(x-600,430,230,50);
  ellipse(x-200,430,230,50);
  ellipse(x+200,430,230,50);
  ellipse(x+600,430,230,50);
  ellipse(x+1000,430,230,50);
  
  //Layer4: horizon
  fill(0,180,219);
  arc(x-900,390,230,50,radians(0),radians(180));
  arc(x-500,390,230,50,radians(0),radians(180));
  arc(x-100,390,230,50,radians(0),radians(180));
  arc(x+300,390,230,50,radians(0),radians(180));
  arc(x+700,390,230,50,radians(0),radians(180));
  arc(x+1100,390,230,50,radians(0),radians(180));

  x+= s *direction;
  if ((x>300)||(x<0)){
    direction=-direction;}
  
}

void stars(){
   fill(255,255,223);
  for (int i=0; i<30; i++){
    ellipse(i*150,80,random(0,5),random(0,5));
    ellipse(75+i*150,160,random(0,5),random(0,5));
    ellipse(i*150,240,random(0,5),random(0,5));
    ellipse(75+i*150,320,random(0,5),random(0,5));
    ellipse(i*150,400,random(0,5),random(0,5));
    ellipse(75+i*150,480,random(0,5),random(0,5));
    ellipse(i*150,560,random(0,5),random(0,5));
  }
}

void earth(){
  fill(2,162,201);
  ellipse(xe,300,80,80);
  fill(135,206,0);
  arc(xe+5,295,60,70,radians(240),radians(340));
  ellipse(xe+10,320,10,15);
  ellipse(xe+15,304,5,5);
  ellipse(xe-20,295,17,24);
 
  xe += xs * edir;
  if ((xe>800)||(xe<100)){
    edir = -edir;}
}

void palmTree(){
  fill(201,139,104);
  rect(200,200,30,200);
  
  fill(152,188,67);
  arc(170,210,125,50,radians(160),radians(340));
  arc(275,210,125,50,radians(190),radians(370));
  
  fill(165,103,68);
  ellipse(200,210,20,20);
  ellipse(230,210,20,20);
}
  
void tube(){
  fill(250,237,125);
  rect(600,345,80,30);
  ellipse(600,360,30,30);
  ellipse(680,360,30,30);
  fill(242,150,97);
  rect(600,345,10,30);
  rect(620,345,10,30);
  rect(640,345,10,30);
  rect(660,345,10,30);
}
  

void space(){
  
  fill(0,72,111);
  rect(0,0,900,600);
  
  stars();
  
  if (edir>0){
    earth();
    sun();}
    
  else if (edir<0){
    sun();
    earth();
    if ((xe>420)&&(xe<480)){
      flag=1;
    }
}
    
 
}
  

void draw(){
  
  //main - space
  
  if (flag ==0){
    space();}
  else if (flag==1){
    beach();
    if (mousePressed == true){
      flag=0;
      xe=100;
    }
  }
  //else if (flag==2){
  //  space();
  //  flag=0;}
  
  
}

  
  
