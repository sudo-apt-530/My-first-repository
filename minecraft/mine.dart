class MinecraftGame {
  MinecraftGame(this.player);

  final String player;
  int level = 0;

  void playerRun() {
    print("$player идёт.");
    level++;
  }

  void playerBuild() {
    print("$player что-то строит.");
    level++;
  }

  @override
  String toString() {
    return "Minecraft player's name: $player.";
  }
}
