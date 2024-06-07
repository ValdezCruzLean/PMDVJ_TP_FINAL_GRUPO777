class Enemigo {
    private PVector posicion;
    private PVector velocidad;
    private PImage imagen;

    public Enemigo(PVector posicion) {
        this.posicion = posicion;
        this.velocidad = new PVector(2,height/20);  // Velocidad vertical constante
        this.imagen = loadImage("Enemy.png");
        this.imagen.resize(60, 30);
    }

    public void display() {
        imageMode(CENTER);
        image(imagen, this.posicion.x, this.posicion.y);
    }

    public void move() {
     this.posicion.y+=this.velocidad.y*Time.getDeltaTime (frameRate);
          this.posicion.x+=this.velocidad.x*Time.getDeltaTime (frameRate);

    }

    public PVector getPosicion() {
        return this.posicion;
    }

    public void setPosicion(PVector posicion) {
        this.posicion = posicion;
    }
}
