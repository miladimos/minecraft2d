import 'package:minecraft2d/components/block_component.dart';
import 'package:minecraft2d/resources/blocks.dart';

class StoneBlock extends BlockComponent {
  StoneBlock({required super.blockIndex, required super.chunkIndex})
      : super(block: Blocks.stone);

  @override
  Future<void> onLoad() async {
    super.onLoad();

    itemDropped = Blocks.cobblestone;
  }
}
