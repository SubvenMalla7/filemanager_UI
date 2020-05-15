import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class RingCircle extends StatelessWidget {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: AnimatedCircularChart(
      key: _chartKey,
      size: Size(250, 200),
      initialChartData: <CircularStackEntry>[
        CircularStackEntry(
          <CircularSegmentEntry>[
            CircularSegmentEntry(
              66.67,
              Colors.white,
              rankKey: 'completed',
            ),
            CircularSegmentEntry(
              33.3,
              Theme.of(context).accentColor,
              rankKey: 'remaining',
            ),
          ],
          rankKey: 'progress',
        ),
      ],
      chartType: CircularChartType.Radial,
      edgeStyle: SegmentEdgeStyle.round,
      holeRadius: 30,
      holeLabel: "    128 GB\n 70% used ",
      labelStyle: TextStyle(color: Colors.white),
      percentageValues: true,
    ));
  }
}
