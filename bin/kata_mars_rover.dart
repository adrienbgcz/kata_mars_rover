import 'package:kata_mars_rover/kata_mars_rover.dart' as kata_mars_rover;
import 'Grille.dart';
import 'Rover.dart';

void main(List<String> arguments) {
  Rover perseverance = Rover('perseverance', posX: 10, posY: 10);
  Rover test = Rover('test');
  Grille atelier = Grille(perseverance);
}
