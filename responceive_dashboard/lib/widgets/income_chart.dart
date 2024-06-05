import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IcomeChart extends StatefulWidget {
  const IcomeChart({
    super.key,
  });

  @override
  State<IcomeChart> createState() => _IcomeChartState();
}

class _IcomeChartState extends State<IcomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 40,
          sections: [
            PieChartSectionData(
              showTitle: false,
              value: 40,
              radius: activeIndex == 0 ? 60 : 50,
              color: const Color(0xFF208BC7),
            ),
            PieChartSectionData(
              value: 25,
              radius: activeIndex == 1 ? 60 : 50,
              showTitle: false,
              color: const Color(0xFF4DB7F2),
            ),
            PieChartSectionData(
              value: 20,
              radius: activeIndex == 2 ? 60 : 50,
              showTitle: false,
              color: const Color(0xFF064060),
            ),
            PieChartSectionData(
              value: 22,
              radius: activeIndex == 3 ? 60 : 50,
              showTitle: false,
              color: const Color(0xFFE2DECD),
            ),
          ],
        ),
      ),
    );
  }
}