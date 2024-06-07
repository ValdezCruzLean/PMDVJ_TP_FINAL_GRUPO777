  
class SpawnerEnemigo {
Enemigo[][] enemigos;
int filas;
int columnas;
float anchoEnemigo;
float altoEnemigo;
float espacioX;  // Espacio horizontal entre enemigos
float espacioY;  // Espacio vertical entre enemigos
  
 public SpawnerEnemigo(){
this.filas = 5;
this.columnas = 11;
this.anchoEnemigo = 60;
this.altoEnemigo = 30;
this.espacioX = 10;  // Espacio horizontal entre enemigos
this.espacioY = 10;  // Espacio vertical entre enemigos
 

  
  }

  public void spawnEnemigos() {
     enemigos = new Enemigo[filas][columnas];
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            float posX = j * (anchoEnemigo + espacioX) + anchoEnemigo / 2;
            float posY = i * (altoEnemigo + espacioY) + altoEnemigo / 2;
            enemigos[i][j] = new Enemigo(new PVector(posX, posY));
        }
    }
}
    
  

  public void actualizarEnemigos() {    
  for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            enemigos[i][j].move();
            enemigos[i][j].display();
        }
}

}
}
