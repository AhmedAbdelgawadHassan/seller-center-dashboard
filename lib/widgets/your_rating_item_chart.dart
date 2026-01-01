import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class YourRatingItemChart extends StatelessWidget {
  final double value;
  final double maxValue;

  const YourRatingItemChart({
    super.key,
    required this.value,
    this.maxValue = 10,
  });

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          minimum: 0,
          maximum: maxValue,
          startAngle: 180,
          endAngle: 0,
          showTicks: false,
          showLabels: false,
          axisLineStyle: AxisLineStyle(
            thickness: 10,
            color: Colors.white
       
          ),
          ranges: [
              GaugeRange(
              startValue: 0,
              endValue: 1,
              color: Color(0xffD3D2FC),
              startWidth: 10,
              endWidth: 10,
            ),
            GaugeRange(
              startValue: 1.2,
              endValue: 2.2,
              color: Color(0xff6058E1),
              startWidth: 10,
              endWidth: 10,
            ),
           
            
          ],
          pointers: [
            NeedlePointer(
              enableAnimation: true,
              animationDuration: 5000,
              value: value,
              needleLength: 0.4,
              needleEndWidth: 3,
              needleStartWidth: 0,
              needleColor: Colors.black,
              knobStyle: KnobStyle(
                color: Colors.grey[300],
                knobRadius: 0.06,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

