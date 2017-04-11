Button miBoton;
void setup(){
  size(600,600);
  surface.setTitle("Waves of Music");
  /*
  Pantalla completa opcional
  fullScreen();
  */
  miBoton = new Button("Click!",50,100,300,300);
  miBoton.setColor(45,45,45);
  miBoton.setHighlightColor(85,85,85);
}
void draw(){
  miBoton.update();
  miBoton.onClick();
}

