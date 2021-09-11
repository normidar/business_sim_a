import 'package:business_sim_a/sim1/engine/EngineCenter.dart';
import 'package:business_sim_a/sim1/engine/GameObj.dart';

class WarehouseRepository {
  int _warehouseCount = 0;
  int getWarehouseCount() => _warehouseCount;
}

class Warehouse {
  // 使用期限
  late int expiryTurn;
  GameObj? _obj;

  /// 不注明使用期限时表示无限期
  Warehouse({int expiry = 0}) {
    expiryTurn = EngineCenter.shared.getTurn() + expiry;
  }

  void insertObj(GameObj newObj) {
    if (_obj == null) {
      _obj = newObj;
    } else {
      throw Error();
    }
  }

  GameObj takeObj() {
    if (_obj != null) {
      final _saveObj = _obj;
      _obj = null;
      return _saveObj!;
    } else {
      throw Error();
    }
  }

  GameObj? checkObj() {
    return _obj;
  }
}
