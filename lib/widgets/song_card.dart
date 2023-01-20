import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    Key? key,
    required this.song,
  }) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(song.coverUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width * 0.35,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.8),
                  Colors.white.withOpacity(0.7),
                ],
              ),
            ),
            child: Column(children: [
              const SizedBox(height: 5),
              Text(
                song.title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                song.description,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.black,
                    ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
