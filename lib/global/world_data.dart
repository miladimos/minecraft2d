import 'package:hive/hive.dart';
import 'package:minecraft2d/components/item_component.dart';
import 'package:minecraft2d/global/crafting_manager.dart';
import 'package:minecraft2d/global/inventory.dart';
import 'package:minecraft2d/global/player_data.dart';
import 'package:minecraft2d/resources/blocks.dart';
import 'package:minecraft2d/resources/mobs.dart';
import 'package:minecraft2d/resources/sky_timer.dart';
import 'package:minecraft2d/utils/constants.dart';
import 'package:minecraft2d/utils/game_methods.dart';

part 'world_data.g.dart';

@HiveType(typeId: 0)
class WorldData {
  @HiveField(0)
  final int seed;

  @HiveField(6)
  final String worldName;

  WorldData({required this.seed, required this.worldName});

  @HiveField(4)
  PlayerDataSave playerDataSave = PlayerDataSave();

  late PlayerData playerData = PlayerData(playerDataSave: playerDataSave);

  @HiveField(1)
  List<List<Blocks?>> rightWorldChunks =
      List.generate(chunkHeight, (index) => []);

  @HiveField(2)
  List<List<Blocks?>> leftWorldChunks =
      List.generate(chunkHeight, (index) => []);

  List<int> get chunksThatShouldBeRendered {
    return [
      GameMethods.instance.currentChunkPlayerIndex - 1,
      GameMethods.instance.currentChunkPlayerIndex,
      GameMethods.instance.currentChunkPlayerIndex + 1,
    ];
  }

  List<int> currentlyRenderedChunks = [];

  List<ItemComponent> items = [];

  @HiveField(3)
  InventoryManager inventoryManager = InventoryManager();

  CraftingManager craftingManager = CraftingManager();

  @HiveField(5)
  SkyTimer skyTimer = SkyTimer();

  Mobs mobs = Mobs();
}
