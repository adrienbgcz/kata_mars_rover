import 'dart:math';

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
      checkDirection(constantDirection.EAST);
      posX = ((posX + x) - grille.xMax) - 1;
    }
    else if (posX + x < 0) {
      checkDirection(constantDirection.WEST);
      posX = ((posX + x) + grille.xMax) + 1;
    }
    else {
      if(posX + x > posX) {
        checkDirection(constantDirection.EAST);
      }
      else if(x == 0) {
       print("Je ne bouge pas");
      }
      else {
       checkDirection(constantDirection.WEST);
      }
      posX += x;
    }


    if(posY + y > grille.yMax ) { // avance vers le NORD
      checkDirection(constantDirection.NORTH);
      posY = ((posY + y) - grille.yMax) - 1;
    }
    else if (posY + y < 0) {
      checkDirection(constantDirection.SOUTH);
      posY = ((posY + y) + grille.yMax) + 1;
    }
    else {
      if(posY + y > posY) {
        checkDirection(constantDirection.NORTH);
      }
      else if(y == 0) {
        print("Je ne bouge pas");
      }
      else {
        checkDirection(constantDirection.SOUTH);
      }
      posY += y;
    }
  }

  void turn(direction) {
    watchingDirection = direction;
    print("Je tourne vers $direction");
  }

  void checkDirection(direction) {
    if(watchingDirection == direction) {
      print("J'avance");
    } else {
      turn(direction);
      print("Maintenant j'avance vers $watchingDirection");
    }
  }

  void convert(String message){ 
    message.runes.forEach((int rune) {
      var char = String.fromCharCode(rune);

      switch(char){
        case "N":{
          move(y: 1);
        }
        break;

        case "S":{
          move(y: -1);
        }
        break;

        case "W":{
          move(x: -1);
        }
        break;

        case "E":{
          move(x: 1);
        }
        break;
      }
    });
  }

  String randomCode(){
    int size = Random().nextInt(10) + 1;
    List<String> cardinalPoints = ["N","S","W","E"];
    String code = "";
    for( var i = 0 ; i < size; i++ ) { 
      int index = Random().nextInt(4);
      code += cardinalPoints[index];
   }
   return code;
  }
}