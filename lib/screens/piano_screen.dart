import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PianoScreen extends StatelessWidget {
  const PianoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          // White Keys Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audios/a6-102820.mp3'));
                },
                child: buildWhiteKey(),
              ),
              GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audios/b6-82017.mp3'));
                },
                child: buildWhiteKey(),
              ),
              GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audios/c6-102822.mp3'));
                },
                child: buildWhiteKey(),
              ),
              GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audios/d6-82020.mp3'));
                },
                child: buildWhiteKey(),
              ),
              GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audios/do-80236.mp3'));
                },
                child: buildWhiteKey(),
              ),
              GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audios/f6-102819.mp3'));
                },
                child: buildWhiteKey(),
              ),
              GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audios/fa-78409.mp3'));
                },
                child: buildWhiteKey(),
              ),
              GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audios/g6-82013.mp3'));
                },
                child: buildWhiteKey(),
              ),
              GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audios/g6-82014.mp3'));
                },
                child: buildWhiteKey(),
              ),
            ],
          ),
          Positioned(
            top: 0,
            child: Row(
              children: [
                SizedBox(width: 67,),
                GestureDetector(
                  onTap: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('audios/music-box-note-14514.mp3'));
                  },
                  child: buildBlackKey(),
                ),
                SizedBox(width: 118,),
                GestureDetector(
                  onTap: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('audios/piano-g-6200.mp3'));
                  },
                  child: buildBlackKey(),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('audios/re-78500.mp3'));
                  },
                  child: buildBlackKey(),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('audios/si-80238.mp3'));
                  },
                  child: buildBlackKey(),
                ),
                SizedBox(width: 118),
                GestureDetector(
                  onTap: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('audios/sol-101774.mp3'));
                  },
                  child: buildBlackKey(),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('audios/tired-ghosts-piano-65013.mp3'));
                  },
                  child: buildBlackKey(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget buildWhiteKey() {
    return Container(
      height: 400,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 5),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
      ),
    );
  }
  Widget buildBlackKey() {
    return Container(
      height: 250,
      width: 60,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
      ),
    );
  }
}
