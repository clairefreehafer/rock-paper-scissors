int human; // 1, 2, or 3
int humanwins = 0; // human wins
int ties = -1; // ties
int computerwins = 0; // computer wins
int computer; // random

float number; // for computer selection

PImage rock; // rock image
PImage paper; // paper image
PImage scissor; // scissor image

void setup() {
  // game board
  background(255);
  size(800,500);
  textSize(32);
  fill(0);
  text("Rock Paper Scissors",250,50);
  strokeWeight(3);
  line(400,100,400,400);
  // side labels
  text("You",150,100);
  text("Computer",525,100);
  // winning condition
  // beginning score
  // human wins
  text(humanwins,250,460);
  textSize(15);
  text("wins",250,475);
  // ties
  textSize(32);
  text(ties,390,460);
  textSize(15);
  text("ties",390,475);
  // computer wins
  textSize(32);
  text(computerwins,530,460);
  textSize(15);
  text("wins",530,475);
  // images
  rock = loadImage("rock.png"); // rock image
  paper = loadImage("paper.gif"); // paper image
  scissor = loadImage("scissor.png"); // scissor image
}

void draw() {
  // draw human rock
  // draw human paper
  // draw human scissor
  
  // draw computer rock
  // draw computer paper
  // draw computer scissor
  
  // if statement to compare computer + human
  // win or lose
  
  int x = human - computer;
  // computer wins
  // rock = 1, paper = 2, scissors = 3
  if (x == 1 || x == -2) {
    humanwins ++ ;
    noStroke();
    fill(255);
    rect(250,430,100,32);
    textSize(32);
    fill(0);
    text(humanwins,250,460);
    noLoop();
  }
  // tie
  else if (x == 0) {
    ties ++ ;
    noStroke();
    fill(255);
    rect(390,430,100,32);
    textSize(32);
    fill(0);
    text(ties,390,460);
    noLoop();
  }
  // human wins
  else {
    computerwins ++ ;
    noStroke();
    fill(255);
    rect(530,430,300,32);
    textSize(32);
    fill(0);
    text(computerwins,530,460);
    noLoop();
  }
}

void keyReleased() {
  loop();
  // computer selection
  number = random(3);
  computer = ceil(number);
  if (computer == 1) {
    computerRock();
  }
  else if (computer == 2) {
    computerPaper();
  }
  else if (computer == 3) {
    computerScissor();
  }
  // human selection
  if (key == '1') {
    humanRock();
    human = 1;
  }
  else if (key == '2') {
    humanPaper();
    human = 2;
  }
  else if (key == '3') {
    humanScissor();
    human = 3;
  }
}

// key press to set computer's random

// human images
void humanRock() {
  image(rock,130,180,100,100);
}
void humanPaper() {
  image(paper,130,180,100,100);
}
void humanScissor() {
  noStroke();
  fill(255);
  rect(130,180,100,100);
  image(scissor,130,180,100,100);
}

// computer images
void computerRock() {
  image(rock,550,180,100,100);
}
void computerPaper() {
  image(paper,550,180,100,100);
}
void computerScissor() {
  noStroke();
  fill(255);
  rect(550,180,100,100);
  image(scissor,550,180,100,100);
}
