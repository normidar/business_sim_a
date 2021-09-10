/// 资产计算管理类
class Casher {
  int _cash = 0;
  int getCash() => _cash;
  void payForSomething(int amount) {
    _cash -= amount;
  }

  void inWithSomething(int amount) {
    _cash += amount;
  }
}

class WaitToCount {
  final int _willCountTurn;
  final int _countAmount;

  WaitToCount(this._willCountTurn, this._countAmount);

  int getWillCountTurn() => _willCountTurn;
  int getCountAmount() => _countAmount;
}
