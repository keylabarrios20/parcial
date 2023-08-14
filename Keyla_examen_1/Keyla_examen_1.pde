int estado,cont;
int[] x1=new int[1000];
int[] x2=new int[1000];
int[] y1=new int[1000];
int[] y2=new int[1000];
int actualx1,actualy1;


void setup(){
  size(4000,400);
  rectMode(CORNERS);
  estado=0;
  cont=0;
}
void draw(){
  background(0);
  stroke(0,255,0);
  noFill();
  
  rect(375,1,398,25); //dibuja
  line(375,1,398,25); //boton de la esquina
  line(375,25,398,1); //superior derecha
  
  fill(0,255,0,30);
  
  for(int i=1; i<=cont;i++){   //imprime los rectangulos ya grabados, de verde
  rect(x1[i],y1[i],x2[i],y2[i]);
  }
  if(estado==1){  //si el boton del mouse esta presionado 
  stroke(0,0,255);  // pone de rojo para el que se esta generando
  fill(0,0,255,30);
  rect(actualx1,actualy1,mouseX,mouseY);
  }
}
void mousePressed() {
  if(mouseX>357 && mouseY<25) { //si el mouse fue presionado en el cuadrado de la esquina
  cont=0;  //borra todo
  estado=0;
  }
  else{
    estado=1; //cuando se presiona el boton estado pasa a 1
    actualx1=mouseX;   //guarda los datos 
    actualy1=mouseY;   // de la primer esquina del rectangulo
  }
}
void mouseReleased(){
  if(!(mouseX>357  && mouseY<25)){ //si el mouse no fue presionado en el cuadrado de la esquina
  estado=0 ;
  cont++;    //cuenta un nuevo rectangulo
  x1[cont]=actualx1; //y agrega el nuevo rectangulo
  y1[cont]=actualy1;
  x2[cont]=mouseX;
  y2[cont]=mouseY;
  }
}
  
  
  
  
  
  
