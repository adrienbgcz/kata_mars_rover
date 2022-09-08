import 'package:kata_mars_rover/kata_mars_rover.dart' as kata_mars_rover;
import 'Grille.dart';
import 'Rover.dart';

void main(List<String> arguments) {
  Grille atelier = Grille();
  Rover perseverance = Rover('perseverance', atelier, posX: 10, posY: 10);

}
