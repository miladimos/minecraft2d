import 'package:minecraft2d/resources/blocks.dart';
import 'package:minecraft2d/resources/structures.dart';

Structure birchTree = Structure(structure: [
  [null, Blocks.birchLeaf, Blocks.birchLeaf, Blocks.birchLeaf, null],
  [
    Blocks.birchLeaf,
    Blocks.birchLeaf,
    Blocks.birchLeaf,
    Blocks.birchLeaf,
    Blocks.birchLeaf
  ],
  [
    Blocks.birchLeaf,
    Blocks.birchLeaf,
    Blocks.birchLeaf,
    Blocks.birchLeaf,
    Blocks.birchLeaf
  ],
  [null, null, Blocks.birchLog, null, null],
  [null, null, Blocks.birchLog, null, null],
], maxOccurences: 1, maxWidth: 5);
