Boss boss;
Tanke miTanke;
SpawnerBalas spawner;
float timer;
private SpawnerEnemigo spawnerEnemigo;


void setup() {
  size (800,600);
boss = new Boss (new PVector (width/2,-100));
spawnerEnemigo = new SpawnerEnemigo();//Inicializacion del generador de lapices
spawnerEnemigo.spawnEnemigos();
timer = 0;
  miTanke = new Tanke();
  spawner = new SpawnerBalas(1000);
frameRate (60);
}

void draw(){

background(0);

 spawnerEnemigo.actualizarEnemigos();// Actualiza la creacion de los lapices y sus metodos
 spawner.actualizarBalas();
boss.display();
boss.move();
  miTanke.display();
  miTanke.readCommand();
timer+=Time.getDeltaTime(frameRate);
fill(255);
textSize(20);
text("Segundos: "+round (timer),20,100);
} 

void keyPressed(){
  
 // println("Entro en el método");
  if(keyCode== ENTER ){
    println("Se presionó la tecla");
    miTanke.disparar(spawner);
  }
}
