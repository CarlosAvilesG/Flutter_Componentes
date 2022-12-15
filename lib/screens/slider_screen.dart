import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _silderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                min: 50,
                max: 400,
                // divisions: 10,
                activeColor: AppTheme.primary,
                value: _silderValue, // 100,
                onChanged: (value) {
                  _silderValue = value;
                  print(value);
                  setState(() {});
                },
              ),
              Image(
                image: const NetworkImage(
                    'https://i.pinimg.com/564x/6f/5c/78/6f5c784b2e2e5b2726d9d3f90ae5416a.jpg'),
                fit: BoxFit.contain,
                width: _silderValue + 150,
              ),
              const SizedBox(height: 50)
            ],
          ),
        ));
  }
}
