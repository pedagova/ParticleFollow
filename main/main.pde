
ArrayList<Particle> particles;
Player player;
final int NUMPARTICLES = 60;

void setup(){
  size(600, 600);
  noCursor();
  noStroke();
  particles = new ArrayList<Particle>();
  for(int i = 0; i < NUMPARTICLES; i++){
    
    particles.add(new Particle((int)random(width), (int)random(height), 5));
  
  }
  
  player = new Player(mouseX, mouseY, 10, 255, 0, 0);

}

void draw(){
  
  background(0);
  int i = 0;
  for(Particle p: particles){
 
    if(mouseX + player.rad > p.x && mouseX - player.rad < p.x && mouseY + player.rad > p.y && mouseY - player.rad < p.y){
      particles.remove(p);
      break;
    }
    p.print();
    p.act();
    i++; 
}

for(; i < particles.size(); i++){
  particles.get(i).print();
   particles.get(i).act();
  i++; 
}
  
  player.print();
  player.act();
  
}