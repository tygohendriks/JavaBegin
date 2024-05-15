int score = 0;
Ball ball;
SpecialBall specialBall; 
Padel padel;
boolean hasWon = false; 

void setup() {
  size(500, 500);
  ball = new Ball();
  specialBall = new SpecialBall(); 
  padel = new Padel();
}

void draw() {
  background(0, 0, 150);

  ball.update();
  specialBall.update(); 

  if (ball.x > padel.x1 && ball.x < padel.x1 + padel.breete && ball.y > padel.y1 && ball.y < padel.y1 + 10) {
    score++;
    ball.reset();
  }

  if (specialBall.x > padel.x1 && specialBall.x < padel.x1 + padel.breete && specialBall.y > padel.y1 && specialBall.y < padel.y1 + 10) {
    score += 2;
    specialBall.reset();
  }

  if (score > 0) {
    ball.snelheid += 0.0020;
    specialBall.snelheid += 0.0050;
  }

  showScore(score);
  ball.drawIt();
  specialBall.drawIt();
  fill(200, 255, 0);
  strokeWeight(3);

  if (ball.y > height) {
    ball.reset();
  }
  if (specialBall.y > height) {
    specialBall.reset();
  }


  padel.drawIt();


  if (score >= 60) {
    background(0, 255, 0);
    hasWon = true;
  }


  if (hasWon) {
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text("You win!", width / 2, height / 2);
  }
}

void keyPressed() {
  if (key == 'd') {
    padel.x1 += 100;
  } else if (key == 'a') {
    padel.x1 -= 100;
  }
}

void showScore(int score) {
  fill(255);
  textSize(20);
  text("Score: " + score, 10, 30);
}

class Ball {
  float x = 250;
  float y = 250;
  float snelheid = 5;

  void update() {
    y += snelheid;
  }

  void reset() {
    y = 0;
    x = random(width);
  }

  void drawIt() {
    fill(200, 0, 0);
    ellipse(x, y, 25, 25);
  }
}

class SpecialBall {
  float x = 100;
  float y = 100;
  float snelheid = 7;

  void update() {
    y += snelheid;
  }

  void reset() {
    y = 0;
    x = random(width);
  }

  void drawIt() {
    fill(255, 255, 0);
    ellipse(x, y, 25, 25);
  }
}

class Padel {
  float x1 = 150;
  float y1 = 400;
  float breete = 100;

  void drawIt() {
    rect(x1, y1, breete, 10);
  }
}
