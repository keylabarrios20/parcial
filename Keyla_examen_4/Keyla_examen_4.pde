color y = 35;
void setup ( ) {
size(200 , 200) ;
}
void draw ( ) {
background (204 ) ;
line(10 , 50 , 90 , 50) ;
fill(255,125,0);
if( key == CODED)
{
if( keyCode == UP)
{
y = 20;
}
else
if ( keyCode == DOWN)
{
y = 50;
}
}
else
{
y = 35;
}
rect(25 , y , 50 , 30) ;
}
