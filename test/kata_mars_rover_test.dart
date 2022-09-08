import 'package:test/test.dart';
import '../bin/Grille.dart';
import '../bin/Rover.dart';

void main() {
  // Define the test
  test("test position rover when grille is created", () {
    // Arrange
    Grille grille = Grille();


    // Act
    Rover rover = Rover('test rover', grille, posX: 0, posY: 0);

    // Asset
    expect(rover.posY, 0);
    expect(rover.posX, 0);
  });

  // Define the test
  test("test max grille size", () {
    // Arrange
    Grille grille = Grille();

    // Act
    // Asset
    expect(grille.xMax, 9);
    expect(grille.yMax, 9);
  });

  // Define the test
  test("function move change Y position", () {
    // Arrange
    Grille grille = Grille();
    Rover rover = Rover('test rover', grille);

    // Act
    rover.move(y: 1);
    // Asset
    expect(rover.posY, 1);
    expect(rover.posX, 0);
  });

  test("function move change X position", () {
    // Arrange
    Grille grille = Grille();
    Rover rover = Rover('test rover', grille);

    // Act
    rover.move(x: 1);
    // Asset
    expect(rover.posY, 0);
    expect(rover.posX, 1);
  });

  test("rover don't move if no params in move function", () {
    // Arrange
    Grille grille = Grille();
    Rover rover = Rover('test rover', grille);

    // Act
    rover.move();
    // Asset
    expect(rover.posY, 0);
    expect(rover.posX, 0);
  });

  test("rover don't move if X position > xMax", () {
    // Arrange
    Grille grille = Grille();
    Rover rover = Rover('test rover', grille);

    // Act
    rover.move(x:15);
    // Asset
    expect(rover.posY, 0);
    expect(rover.posX, 5);
  });

  test("rover don't move if Y position > yMax", () {
    // Arrange
    Grille grille = Grille();
    Rover rover = Rover('test rover', grille);

    // Act
    rover.move(y:15);
    // Asset
    expect(rover.posY, 5);
    expect(rover.posX, 0);
  });

  test("rover don't move if X position < 0", () {
    // Arrange
    Grille grille = Grille();
    Rover rover = Rover('test rover', grille);

    // Act
    rover.move(x:-15);
    // Asset
    expect(rover.posY, 0);
    expect(rover.posX, -5);
  });

  test("rover don't move if Y position < 0", () {
    // Arrange
    Grille grille = Grille();
    Rover rover = Rover('test rover', grille);

    // Act
    rover.move(y:-15);
    // Asset
    expect(rover.posY, -5);
    expect(rover.posX, 0);
  });

  test("rover turn before move if he don't look the good direction", () {
    // Arrange
    Grille grille = Grille();
    Rover rover = Rover('test rover', grille, watchingDirection: 'north');

    // Act
    rover.move(x: 1);

    // Asset
    expect(rover.posY, 0);
    expect(rover.posX, 1);
    expect(rover.watchingDirection, 'east');

  });

  test("rover don't turn before move if he look the good direction", () {
    // Arrange
    Grille grille = Grille();
    Rover rover = Rover('test rover', grille, watchingDirection: 'north');

    // Act
    rover.move(y: 1);

    // Asset
    expect(rover.posY, 1);
    expect(rover.posX, 0);
    expect(rover.watchingDirection, 'north');

  });


}
