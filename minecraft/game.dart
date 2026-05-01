import 'mine.dart';

void main() {
  final game = MinecraftGame("Иван");

  game.playerRun();
  game.playerDestroy();
  game.playerCraft();
  game.playerBuild();
  print(game.level);
  print(game);
}

extension on MinecraftGame {
  void playerDestroy() {
    print("$player что-то ломает.");
    level++;
  }

  void playerCraft() {
    print("$player что-то собирает.");
    level++;
  }
}
