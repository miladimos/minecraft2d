import 'package:minecraft2d/components/block_component.dart';
import 'package:minecraft2d/resources/blocks.dart';
import 'package:minecraft2d/resources/items.dart';

class GoldOreBlock extends BlockComponent {
  GoldOreBlock({required super.blockIndex, required super.chunkIndex})
      : super(block: Blocks.goldOre);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    itemDropped = Items.goldIngot;
  }
}
