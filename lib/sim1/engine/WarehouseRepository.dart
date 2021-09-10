class WarehouseRepository {
  int _warehouseCount = 0;
  int getWarehouseCount() => _warehouseCount;
}

class Warehouse {
  // 使用期限
  int _expiry;

  /// 不注明使用期限时表示无限期
  Warehouse({this._expiry = 0});
}
