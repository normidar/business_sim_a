class GameObj {
  final String _uniqueName;
  final int _cost;
  final List<GameObj> _objCosts;
  final int _turnCost;
  final int _outputCount;
  final int _canBackCash;
  const GameObj(this._uniqueName, this._cost, this._objCosts, this._turnCost,
      this._outputCount, this._canBackCash);
  String getName() {
    return this._uniqueName;
  }
}

class GameObjectCounter {
  final GameObj _gameObj;
  int count;
  GameObjectCounter(this._gameObj, {this.count = 0});
}
