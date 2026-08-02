class Enemy {
  float x, y;
  float r;
  float speed;

  Enemy(float x, float y, float r, float speed) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.speed = speed;
  }

  void display() {
    fill(180);
    noStroke();
    ellipse(x, y, r*2, r*2);
    
  }

  void moveTowards(Goal goal) {
    if (goal.x > x) x += speed;
    else x -= speed;

    if (goal.y > y) y += speed;
    else y -= speed;
  }

  boolean collidesWithMouse() {
  return dist(mouseX, mouseY, x, y) < r * 2.5;  
}
}
