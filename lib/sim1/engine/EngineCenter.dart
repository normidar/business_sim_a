class EngineCenter {
  // singleton
  static final EngineCenter shared = EngineCenter();

  int _turn = 0;
  int getTurn() => _turn;
  void newTurn() {
    _turn++;
    // 各ところに知らせる
  }
}
