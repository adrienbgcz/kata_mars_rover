import 'Grille.dart';

class Rover {
  final String name;
  int posX;
  int posY;
  Grille grille;

  Rover(this.name, this.grille, {this.posX = 0, this.posY = 0});

  void move({int x = 0, int y = 0}) {
    if(posX + x > grille.xMax ) {
      posX = ((posX + x) - grille.xMax) - 1;
    } else if (posX + x < 0) {
      posX = ((posX + x) + grille.xMax) + 1;
    } else {
      posX += x;
    }

    if(posY + y > grille.yMax ) {
      posY = ((posY + y) - grille.yMax) - 1;
    } else if (posY + y < 0) {
      posY = ((posY + y) + grille.yMax) + 1;
    } else {
      posY += y;
    }
  }
}