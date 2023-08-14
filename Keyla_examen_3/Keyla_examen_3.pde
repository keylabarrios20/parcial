int Radio = 50;
int cuenta = 0;
void setup ( )
{
size(600 ,600 ) ;
background ( 0 ) ;
}
void draw ( )
{
background ( 0 ) ;
stroke(175 ) ;
fill(175 ) ;
println(" Iteraciones : " + cuenta ) ;
ellipse(20+cuenta , height /2 , Radio , Radio ) ;
cuenta ++;
}
