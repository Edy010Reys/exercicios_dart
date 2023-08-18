fastminton(String sequence) {
  final value = sequence.toUpperCase().split('');
  int pointLeft = 0;
  int pointRight = 0;
  int gameLeft = 0;
  int gameRight = 0;
  int letterR = 0;
  for (final letter in value) {
    if (letter == 'Q') {
      if (gameLeft > 1) {
        print('$gameLeft (winner) - $gameRight');
        break;
      }
      else if (gameRight > 1) {
        print('$gameLeft - $gameRight (winner)');
        break;
      } else {
        if (letterR % 2 == 0) {
          print('$gameLeft ($pointLeft*) - $gameRight ($pointRight)');
        } else {
          print('$gameLeft ($pointLeft) - $gameRight ($pointRight*)');
        }
        continue;
      }
    }
    if (letter == 'R') {
      letterR ++;
    }
    if (letterR % 2 == 0) {
      pointLeft ++;
    }
    else if (letterR % 2 != 0) {
      pointRight ++;
    }
    int diff = (pointLeft - pointRight).abs();
    if (pointLeft > 4 && diff > 1 || pointLeft > 9) {
      gameLeft ++;
      pointLeft *= 0;
      diff *= 0;
      pointRight *= 0;
    }
    else if (pointRight > 4 && diff > 1 || pointRight > 9) {
      gameRight ++;
      pointRight *= 0;
      diff *= 0;
      pointLeft *= 0;
    }
  }
}
