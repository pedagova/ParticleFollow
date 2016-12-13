class Particle{
  float x;
  float y;
  float rad;
  float speedX;
  float speedY;
  int red;
  int blue;
  int green;
  
  
  public Particle(int x, int y, float r){
  
    this.x = x;
    this.y = y;
    this.rad = r;
    speedX = map(random(1000), 0, 1000, 1, 2);
    speedY = map(random(1000), 0, 1000, 1, 2);
    red = (int)random(255);
    blue = (int)random(255);
    green = (int)random(255);
    
  }
  
  void print(){
    fill(red, green, blue);
    ellipse(x, y, rad, rad);
  
  }  
  
  void act(){
  
    if(x + rad > width || x - rad < 0) speedX *= -1;
    if(y + rad > height || y - rad < 0) speedY *= -1;
    
    x += speedX;
    y += speedY;
  
  }
   
    
}