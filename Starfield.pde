Particle[] bob;

void setup() {
  size(300, 300);
  
  bob = new Particle[100];

  bob[0] = new Oddball();
  for (int i = 1; i < bob.length; i++) {
    bob[i] = new Particle();
  }
}

void draw() {
  background(169, 169, 169);
  for (int i = 0; i < bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
}

class Particle {
  int count = 0;
  color c;
  double x, y, angle, speed, size;

  Particle() {
    c = color(255, 255, 255);
    x = 150;
    y = 150;
    angle = Math.random() * 2 * Math.PI;
    speed = Math.random() * 10;
    size = 5;
  }

  void move() {
    if (count < 35) {
      angle += Math.PI / 50;
    }
    
    x += Math.cos(angle) * speed;
    y += Math.sin(angle) * speed;
    
    count++;
  }

  void show() {
    fill(c);
    ellipse((int) x, (int) y, (int) size, (int) size);
  }
}

class Oddball extends Particle {
  Oddball () {
    c = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    size = 9;
  }
}
