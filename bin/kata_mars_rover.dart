import 'package:kata_mars_rover/kata_mars_rover.dart' as kata_mars_rover;
import 'Grille.dart';
import 'Rover.dart';

void main(List<String> arguments) {
  Grille atelier = Grille();
  Rover perseverance = Rover('perseverance', atelier, posX: 0, posY: 0);
  perseverance.convert("NNENNWWNN");
  print("x: ${perseverance.posX} - y: ${perseverance.posY} ");
}
