import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleButton extends StatelessWidget {
  const ToggleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 288.0,
      minHeight: 30.0,
      cornerRadius: 35.0,
      activeBgColors: const [
        [
          Colors.orange,
        ],
        [
          Colors.orange,
        ]
      ],
      // borderColor: ,
      borderWidth: 0.7,
      inactiveBgColor: Colors.white,
      inactiveFgColor: Colors.black,
      initialLabelIndex: 0,
      totalSwitches: 2,
      labels: const ['Дневник настроения', 'Статистика'],

      radiusStyle: true,
      onToggle: (index) {},
    );
  }
}
