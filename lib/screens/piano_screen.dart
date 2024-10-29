import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:untitled/Widgets/black_key.dart';

import '../Widgets/white_key.dart';

class PianoScreen extends StatelessWidget {
  PianoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              8,
              (index) => GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audios/${notes[index]}.mp3'));
                },
                child: buildWhiteKey(),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Row(
              children: List.generate(
                5,
                (index) => GestureDetector(
                  onTap: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('audios/${blackNotes[index]}.mp3'));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: index == 0 ? 67 : 118,
                      ),
                      buildBlackKey(),
                      SizedBox(
                        width: index == 0 ? 20 : 0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<String> notes = [
    'a6-102820',
    'b6-82017',
    'c6-102822',
    'd6-82020',
    'do-80236',
    'f6-102819',
    'fa-78409',
    'g6-82013',
  ];

  final List<String> blackNotes = [
    'music-box-note-14514',
    'piano-g-6200',
    're-78500',
    'si-80238',
    'tired-ghosts-piano-65013',
  ];
}
