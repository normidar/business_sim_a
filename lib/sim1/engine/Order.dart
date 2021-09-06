import 'package:business_sim_a/sim1/engine/GameObj.dart';

abstract class Order {
  // 订单内容
  final List<GameObjectCounter> _contents;
  // 违约延迟赔偿金
  final int _penalty;
  // 赏金
  final int _reward;
  Order(this._contents, this._penalty, this._reward);
}

class PendingOrder extends Order {
  PendingOrder(List<GameObjectCounter> contents, int penalty, int reward)
      : super(contents, penalty, reward);
}

class AgreedOrder extends Order {
  AgreedOrder(List<GameObjectCounter> contents, int penalty, int reward)
      : super(contents, penalty, reward);
}
