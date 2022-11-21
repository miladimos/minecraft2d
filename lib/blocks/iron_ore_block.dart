import 'package:minecraft2d/components/block_component.dart';
import 'package:minecraft2d/resources/blocks.dart';
import 'package:minecraft2d/resources/items.dart';

class IronOreBlock extends BlockComponent {
  IronOreBlock({required super.blockIndex, required super.chunkIndex})
      : super(block: Blocks.ironOre);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    itemDropped = Items.ironIngot;
  }
}
