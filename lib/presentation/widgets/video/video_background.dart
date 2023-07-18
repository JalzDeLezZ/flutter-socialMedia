import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;

  const VideoBackground({
    super.key,
    this.stops = const [0.0, 0.5],
    this.colors = const [Colors.black87, Colors.transparent],
  }) : assert(colors.length == stops.length,
            'colors and stops length must be equal');
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: stops,
        ),
      ),
    ));
  }
}
