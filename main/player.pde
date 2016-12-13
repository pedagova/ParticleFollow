class Player extends Particle{

  public Player(int x, int y, float r, int red, int green, int blue){
    super(x, y , r);  
    this.red = red;
    this.green = green;
    this.blue = blue;
  }

  void act(){
  
    player.x = mouseX;
    player.y = mouseY;
  
  }

}