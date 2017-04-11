class Button{
  private int _length;
  private int _height;
  private float xCoord;
  private float yCoord;
  private color buttonColor;
  private color buttonHightlightColor;
  private boolean buttonOver = false;
  private String textButton;
  
  /*
  Constructor por defecto, se coloca un boton al centro de la ventana
  */
  public Button(){
    this("Default",100,200,width/2,height/2);
  }
  
  /*
  Argumentos: Altura,longitud,coordenada en X, coordenada en Y
  */
  public Button(String txtButton,int _height,int _length,float xCoord,float yCoord){
    this._length = _length;
    this._height = _height;
    this.xCoord = xCoord - this._length/2;
    this.yCoord = yCoord - this._height/2;
    this.textButton  = txtButton;    
  }
  
  /**
  Verifica para cada iteracion del ciclo draw()
  si el mouse se coloca sobre el boton:
    El boton cambia de color con efecto hover
    El puntero de mouse cambia a la mano
  */
  public void update(){
     buttonOver = overButton(); 
     if(buttonOver){
       fill(buttonHightlightColor);
       cursor(HAND);
     }
     else{
       fill(buttonColor);
       cursor(ARROW);
     } 
     stroke(255);
     rect(this.xCoord,this.yCoord,this._length,this._height);
     fill(255,255,255);
     textSize(18);
     text(this.textButton,this.xCoord+ this._length/4,this.yCoord+this._height/4,this._length,this._height);
  }
  
  /**
  Funciones de configuracion, coloca color en el boton
  y coloca color en boton con efecto hover
  */
  public void setColor(int r,int g,int b){
    this.buttonColor = color(r,g,b);
  }
  
  public void setHighlightColor(int r,int g,int b){
    this.buttonHightlightColor = color(r,g,b);
  }
  
  /**
  Espera el evento de mouseClick para
  hacer algo
  */
  public void onClick(){
    if(mousePressed && buttonOver){
        /********
        
        HAZ ALGO
        
        *******/
        print("Clicked yeah!\n");
        //Genera un retraso para evitar errores de sincronizacion con el ciclo draw()
        delay(250);
    }
  }
  
  /**
    Si el mouse está sobre el boton
  */
  private boolean overButton(){
    if(mouseX >= this.xCoord && mouseX <= this.xCoord + this._length && 
    mouseY >= this.yCoord && mouseY <= this.yCoord + this._height){
      return true;
    }
    return false;
  }
}
