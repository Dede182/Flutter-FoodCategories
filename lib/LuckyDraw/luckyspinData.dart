import 'dart:math';

class LuckSpinItem {
  int id;
  String name;
  String imagePath;

  LuckSpinItem({
    required this.id,
    required this.name,
    required this.imagePath,
  });
}

class LuckSpinItemArray {
  List<LuckSpinItem> luckSpinItemArray = [
    LuckSpinItem(
      id: 1,
      name: 'gold',
      imagePath: 'assets/images/luckspin/gold.png',
    ),
    LuckSpinItem(
      id: 2,
      name: 'head',
      imagePath: 'assets/images/luckspin/head.png',
    ),
    LuckSpinItem(
      id: 3,
      name: 'seven',
      imagePath: 'assets/images/luckspin/seven.png',
    ),
  ];
}

class LuckySpinFunction {
  static List generateSpin(itemCollection) {
    return [
      // 1, 1, 1
      Random().nextInt(itemCollection.length) + 1,
      Random().nextInt(itemCollection.length) + 1,
      Random().nextInt(itemCollection.length) + 1
    ];
  }

  static dynamic luckySpinPatter() {
    return [
      {
        'jackpot': [1, 1, 1]
      },
      {
        'good': [2, 2, 2]
      },
      {
        'normal': [3, 3, 3]
      }
    ];
  }

  static void reset(coin, betCoin, resultCoin, coinValidation) {
    coin = 10;
    betCoin = 0;
    resultCoin = 0;
    coinValidation = "";
  }
}
