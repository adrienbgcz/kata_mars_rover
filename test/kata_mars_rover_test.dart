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
    expect(grille.xMax, 10);
    expect(grille.yMax, 10);
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

  /*test("rover don't move if X position > xMax", () {
    // Arrange
    Grille grille = Grille();
    Rover rover = Rover('test rover', grille);

    // Act
    rover.move();
    // Asset
    expect(rover.posY, 0);
    expect(rover.posX, 0);
  });*/
}
