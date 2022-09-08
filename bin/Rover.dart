import 'Grille.dart';
import 'constant.dart' as constantDirection ;

class Rover {
  final String name;
  int posX;
  int posY;
  Grille grille;
  String watchingDirection;


  Rover(this.name, this.grille, {this.posX = 0, this.posY = 0, this.watchingDirection = constantDirection.NORTH});

  void move({int x = 0, int y = 0}) {
    print("Actuellement je regarde vers $watchingDirection");
    if(posX + x > grille.xMax ) { // avance vers l'EST
      if(watchingDirection == constantDirection.EAST) {
        print("J'avance");
      } else {
        turn(constantDirection.EAST);
      }
      posX = ((posX + x) - grille.xMax) - 1;
    }
    else if (posX + x < 0) {
      if(watchingDirection == constantDirection.WEST) {
        print("J'avance");
      } else {
        turn(constantDirection.WEST);
        print("Maintenant j'avance vers $watchingDirection");
      }
    posX = ((posX + x) + grille.xMax) + 1;
    }
    else {
      if(posX + x > posX) {
        if(watchingDirection == constantDirection.EAST) {
          print("J'avance");
        } else {
          turn(constantDirection.EAST);
          print("Maintenant j'avance vers $watchingDirection");
        }
      }
      else if(x == 0) {
       print("Je ne bouge pas");
      }
      else {
        if(watchingDirection == constantDirection.WEST) {
          print("J'avance");
        } else {
          turn(constantDirection.WEST);
          print("Maintenant j'avance vers $watchingDirection");
        }
      }
      posX += x;
    }


    if(posY + y > grille.yMax ) { // avance vers le NORD
      if(watchingDirection == constantDirection.NORTH) {
        print("J'avance");
      } else {
        turn(constantDirection.NORTH);
      }
      posY = ((posY + y) - grille.yMax) - 1;
    }
    else if (posY + y < 0) {
      if(watchingDirection == constantDirection.SOUTH) {
        print("J'avance");
      } else {
        turn(constantDirection.SOUTH);
        print("Maintenant j'avance vers $watchingDirection");
      }
      posY = ((posY + y) + grille.yMax) + 1;
    }
    else if(y == 0) {
      print("Je ne bouge pas");
    }
    else {
      if(posY + x > posY) {
        if(watchingDirection == constantDirection.NORTH) {
          print("J'avance");
        } else {
          turn(constantDirection.NORTH);
          print("Maintenant j'avance vers $watchingDirection");
        }
      }
      else {
        if(watchingDirection == constantDirection.SOUTH) {
          print("J'avance");
        } else {
          turn(constantDirection.SOUTH);
          print("Maintenant j'avance vers $watchingDirection");
        }
      }
      posY += y;
    }

    /*if(posY + y > grille.yMax ) {
      posY = ((posY + y) - grille.yMax) - 1;
    } else if (posY + y < 0) {
      posY = ((posY + y) + grille.yMax) + 1;
    } else {
      posY += y;
    }*/
  }

  void turn(direction) {
    watchingDirection = direction;
    print("Je tourne vers $direction");
  }
}