import 'package:flame/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:minecraft2d/resources/blocks.dart';
import 'package:minecraft2d/resources/structures.dart';
import 'package:minecraft2d/structures/plants.dart';
import 'package:minecraft2d/structures/trees.dart';

enum Biomes { desert, birchForest }

class BiomeData {
  final Blocks primarySoil;
  final Blocks secondarySoil;
  final List<Structure> generatingStructures;

  BiomeData(
      {required this.primarySoil,
      required this.secondarySoil,
      required this.generatingStructures});

  factory BiomeData.getBiomeDataFor(Biomes biome) {
    switch (biome) {
      case Biomes.desert:
        return BiomeData(
            primarySoil: Blocks.sand,
            secondarySoil: Blocks.sand,
            generatingStructures: [cactus, deadBush]);

      case Biomes.birchForest:
        return BiomeData(
            primarySoil: Blocks.grass,
            secondarySoil: Blocks.dirt,
            generatingStructures: [
              birchTree,
              redFlower,
              whiteFlower,
              purpleFlower,
              drippingWhiteFlower
            ]);
    }
  }
}
