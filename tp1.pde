int estado;
int contador;
PFont fuente;
PImage titulo;
PImage tele;
PImage personajes1;
PImage personajes2;



void setup() {
  size(400, 400); 
  frameRate(30);
  
  //declaraciones de variables
  estado = 0;
  contador = 0;
  fuente = createFont ("Simpsons.otf", 40);
  titulo = loadImage ("titulo.jpg");
  tele = loadImage ("tele.png");
  personajes1 = loadImage ("personajes1.jpg");
  personajes2 = loadImage ("personajes2.png");

 

  
}

void draw() {

  if ( estado==0 ) {
    contador++;

    //titulo 
     if  ( contador<90) {
      
    background(255);
    imageMode(CENTER);
    image (titulo,200, 200, 400, 200);
    fill(200,0,0);
    textFont (fuente);
    textAlign(CENTER, CENTER);
    textSize(20);
   
     }
    
   else if (contador>=90 && contador<=180) {
   
      //creditos 
      background (252,115,195);
      imageMode(CENTER);
      image (tele,200, 200, 400,300);
      textSize(30);
      text("Matt Groening", 180,200);
      fill(255,255,0);
      textSize(20);
      text("created by", 180, 130);
   }
   else if (contador>=180 && contador<=270) {
     
 
     //segunda tanda de creditos 
      background (252,115,195);
      imageMode(CENTER);
      image (tele ,200, 200, 400,300);
      textSize(20);
      text("JAMES  L.BROOKS", 180,235);
      text("MATT  GROENING", 180,200);
      text("SAM  SIMON", 180,165);     
      fill(255,255,0);
      textSize(20);
      text("Executive Producers", 180, 130);
      }
    
  
 
     if  ( contador>270 ) {
  
      //tercera tanda de creditos
      background (252,115,195);
      imageMode(CENTER);
      image (tele,200, 200, 400,300);
      textSize(30);
      text("ALF  CLAUSEN", 180,200);
      fill(255,255,0);
      textSize(20);
      text("Music by", 180, 130);

     
    }
    if (contador>360) {
      //personajes
      background (252,115,195);
      imageMode (CENTER);
      image (personajes1 ,200, 200, 400,300);
      text("Personajes", 180, 130);
      text("homero", 100, 275);
      text("marge", 270, 270);
      } 
    if (contador>450) {
       
      //personajes 2 
      background (252,115,195);
      imageMode (CENTER);
      image (personajes2 ,200, 200, 400,300);
      text("Personajes", 180, 130);
      text("bart", 86, 275);
      text("lisa", 260, 275);
      text("maggie", 176, 275);
       
    }
   }
  }
