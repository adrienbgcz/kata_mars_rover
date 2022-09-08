import 'package:test/test.dart';

import '../bin/Grille.dart';
import '../bin/Rover.dart';

void main() {
  // Define the test
  test("test position rover when grille is created", () {
    // Arrange
    Rover rover = Rover('test rover', posX: 0, posY: 0);

    // Act
    Grille grille = Grille(rover);

    // Asset
    expect(grille.rover.posY, 0);
    expect(grille.rover.posX, 0);
  });

  // Define the test
  test("test max grille size", () {
    // Arrange
    Rover rover = Rover('test rover');

    // Act
    Grille grille = Grille(rover);

    // Asset
    expect(grille.xMax, 0);
    expect(grille.yMax, 10);
  });
}
