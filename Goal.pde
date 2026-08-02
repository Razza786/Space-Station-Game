class Goal {
  float x, y;
  float r;

  Goal(float x, float y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
  }

  void display() {
    fill(0, 120, 255);
    noStroke();
    ellipse(x, y, r*2, r*2);
  }

  boolean collides(Enemy e) {
    return dist(x, y, e.x, e.y) < (r + e.r);
  }
}
