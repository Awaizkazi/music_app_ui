import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayerButtons extends StatelessWidget {
  const PlayerButtons({
    super.key,
    required this.audioPlayer,
  });
  final AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StreamBuilder(
          stream: audioPlayer.playerStateStream,
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              final playerState = snapshot.data;
              final processingState =
                  (playerState! as PlayerState).processingState;
              //! Another IF starts here
              if (ProcessingState == ProcessingState.loading ||
                  ProcessingState == ProcessingState.buffering) {
                return Container(
                  width: 60.0,
                  height: 60.0,
                  margin: EdgeInsets.all(10.0),
                  child: CircularProgressIndicator(),
                );
              } else if (!audioPlayer.playing) {
                return IconButton(
                  onPressed: audioPlayer.play,
                  iconSize: 70,
                  icon: Icon(
                    Icons.play_circle,
                    color: Colors.white,
                  ),
                );
              } else if (processingState != ProcessingState.completed) {
                // * another button for PAUSE  Button
                return IconButton(
                  iconSize: 70,
                  icon: Icon(
                    Icons.pause_circle,
                    color: Colors.white,
                  ),
                  onPressed: audioPlayer.pause,
                );
              } // TODO Another if CLOSE HERE
              else {
                return IconButton(
                  onPressed: () => audioPlayer.seek(Duration.zero,
                      index: audioPlayer.effectiveIndices!.first),
                  icon: Icon(
                    Icons.replay_circle_filled_outlined,
                    color: Colors.white,
                  ),
                  iconSize: 70,
                );
              }
            } else {
              return CircularProgressIndicator();
            }
          }),
        ),
      ],
    );
  }
}
