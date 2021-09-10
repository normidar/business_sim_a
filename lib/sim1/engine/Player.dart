import 'package:business_sim_a/sim1/engine/Casher.dart';
import 'package:business_sim_a/sim1/engine/ProductionLine.dart';

class Player {
  /// 生产线仓库
  ProductionLineRepository productionLines = ProductionLineRepository();

  /// 会计处理
  Casher casher = Casher();
}
