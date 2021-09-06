class EngineCenter {
  // singleton
  static final EngineCenter instance = EngineCenter();

  int _turn = 0;
  int getTurn() => _turn;
  void newTurn() {
    _turn++;
    // 各ところに知らせる
  }
}
