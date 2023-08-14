float[] x, y , tinta , radio ; //declaracion de arreglos
//necesarios para dibujar los circulos: la posicion -x,y-
//el color -la tinta- y el tamaño -radio-
int limite;  //variable para definir el limite de los arreglos 
int cantidad; //variable para contar los circulos
void setup(){
  size(400,400);
  //inicializar la memoria
  
  limite = 50; // se define que la cant. limite de circulos es de 50
  cantidad = 0; //se inicia la cant. de circulos en cero
  x = new float[limite]; //declara los arreglos con 50 posiciones de memoria cada uno
  y = new float[limite];
  tinta = new float[limite];
  radio = new float[limite];
  colorMode(HSB);
  noStroke();
  smooth();
  
}
void draw(){
  background(240);
  if( mousePressed ) { //verifica si se presiono el mouse
  boolean tocoAlguno = false;  //se declara esta variable para verificar si el mouse toco algun circulo
  //verifica si se hizo click sobre un circulo ya existente
  for( int i=0; i<cantidad ; i++ ) {  //recorre los circulos existentes
  if( dist( x[i] , y[i] , mouseX , mouseY ) < radio[i] ){  //revisa en cada circulo
  // para ver si el cursor esta dentro del circulo 
  // cambiar el aspecto del circulo seleccionado 
  x[i] = mouseX; //entonces actualiza la posicion del circulo en función del mouse
  y[i] = mouseY;
  tinta[i] = ( tinta[i] + 1 ) % 255; //incrementa la tinta
  tocoAlguno = true; //pone la variable en "true" para especificar que un circulo 
  //fue tocado
  break; // rompe el ciclo for
  }
  }
  // si no toco ningun circulo
  if( ! tocoAlguno && cantidad<limite ) {  //si no toco ningun circulo
  //y todavía existen lugares pendientes entonces crea uno nuevo
  //almacenar en memoria un nuevo circulo
  x[cantidad] = mouseX;  //crea el circulo en la posicion del mouse
  y[cantidad] = mouseY;
  tinta[cantidad] = random(255);  //le asigna una tinta al azar
  radio[cantidad] = random(20,80);  //le asigna un tamaño al azar
  cantidad++;  //incrementa la cantidad de circulos
  }
  }
  //dibujar los circulos almacenados en memoria
  for( int i=0 ; i<cantidad ; i++ ){  //recorre cada circulo creado para dibujarlo
  fill( tinta[i] , 255 , 255 , 100 );
  ellipse( x[i] , y[i] , radio[i]*2 , radio[i]*2 );
  }
}
  
  
  
  
