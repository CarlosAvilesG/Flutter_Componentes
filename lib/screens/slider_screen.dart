import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              // divisions: 10,
              activeColor: AppTheme.primary,
              value: _sliderValue, // 100,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      print(value);
                      setState(() {});
                    }
                  : null,
            ),

            // Checkbox(
            //   value: _sliderEnabled,
            //   onChanged: (value) {
            //     _sliderEnabled = value ?? true;
            //     setState(() {});
            //   },
            // ),

            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value ?? true;
              }),
            ),

            // Switch(
            //   value: _sliderEnabled,
            //   onChanged: (value) => setState(() {
            //     _sliderEnabled = value ?? true;
            //   }),
            // ),

            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value;
              }),
            ),

            const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://i.pinimg.com/564x/6f/5c/78/6f5c784b2e2e5b2726d9d3f90ae5416a.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue + 150,
                ),
              ),
            ),

            // const SizedBox(height: 50)
          ],
        ));
  }
}
