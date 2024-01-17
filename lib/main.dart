import 'package:bonfire1/screens/game_over_sceen.dart';
import 'package:bonfire1/screens/main_menu_screen.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'game/flappy_bird_game.dart';

void main() {
  final game = FlappyBirdGame();
  runApp(
    GameWidget(
      game: game,
      initialActiveOverlays: const [MainMenuScreen.id],
      overlayBuilderMap: {
        'mainMenu': (context, _) => MainMenuScreen(game: game),
        'gameOver': (context, _) => GameOverScreen(game: game),
      },
    ),
  );
}
