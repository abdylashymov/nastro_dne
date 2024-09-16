import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentValue = 5;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 77,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                13,
              ),
            ),
            child: Slider(
              value: _currentValue,
              min: 0,
              max: 6,
              divisions: 6, // Разделения для слайдера
              label: _currentValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
              activeColor: Colors.orange, // Цвет активной части слайдера
              inactiveColor: Colors.grey[300],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Низкий',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Color(
                    0xffBCBCBF,
                  ),
                ),
              ),
              Text(
                'Высокий',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Color(
                    0xffBCBCBF,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
