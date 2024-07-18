import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? itemImage;
  final String jbName;
  final String enName;
  final String itemSound;
  const ItemModel(
      {this.itemImage,
      required this.jbName,
      required this.enName,
      required this.itemSound});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(itemSound));
  }
}
