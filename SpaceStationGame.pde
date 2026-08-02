//NOTES
//Detail Astroids better
//Detail Station




ArrayList<Enemy> enemies;
Goal station;

final int MAX_ENEMIES = 5;
boolean gameOver = false;
int spawnTimer = 0;
int spawnDelay = 100;
int minSpawnDelay = 35;
int lives = 3;
int score = 0;

void setup() {
  size(800, 600);
  
  station = new Goal(width/2, height/2, 30);

  enemies = new ArrayList<Enemy>();

  // Spawns asteroids
  for (int i = 0; i < MAX_ENEMIES; i++) {
    spawnEnemy();
  }
}

void spawnEnemy() {
  // Spawn enemies at random sides
  float px, py;

  int side = int(random(4)); // 0=top, 1=bottom, 2=left, 3=right

  if (side == 0) {             //Top
    px = random(width);
    py = 0;
  } else if (side == 1) {      //bottom
    px = random(width);
    py = height;
  } else if (side == 2) {      //left
    px = 0;
    py = random(height);
  } else {                     //right
    px = width;
    py = random(height);
  }

  enemies.add(new Enemy(px, py, 10, random(1.2, 2.0)));
}

void draw() {
  background(0);

  station.display();

  if (!gameOver) {

    spawnTimer++;

    // Spawn enemies over time
    if (spawnTimer > spawnDelay && enemies.size() < MAX_ENEMIES) {
      spawnEnemy();
      spawnTimer = 0;

      if (spawnDelay > minSpawnDelay) {
        spawnDelay -= 10;
      }
    }

    // Move and draw enemies
    for (int i = enemies.size() - 1; i >= 0; i--) {
      Enemy e = enemies.get(i);
      e.moveTowards(station);
      e.display();

      // Collision with station
      if (station.collides(e)) {
        enemies.remove(i);
        lives--;

        if (lives <= 0) {
          gameOver = true;
        }
      }
    }
  }

  //Ui
  fill(255);
  textSize(18);
  text("Score: " + score, 40, 30);
  text("Lives: " + lives, 40, 55);

  if (gameOver) {
    textSize(40);
    fill(255, 0, 0);
    textAlign(CENTER, CENTER);
    text("GAME OVER", width / 2, height / 2);
  }
}

void mousePressed() {
  if (gameOver) return;

  for (int i = enemies.size() - 1; i >= 0; i--) {
    Enemy e = enemies.get(i);
    if (e.collidesWithMouse()) {
      enemies.remove(i);
      score++;
    }
  }
}
