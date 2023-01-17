import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';

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
        title: const Text('Sliders and checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              min: 0,
              max: 400,
            ),
            // Checkbox(
            //   value: _sliderEnabled,
            //   onChanged: (value) {
            //     _sliderEnabled = value ?? true;
            //     setState(() {});
            //   },
            // ),
            CheckboxListTile(
              value: _sliderEnabled,
              title: const Text('Habilitar Slider'),
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              },
            ),
            // Switch(
            //   value: _sliderEnabled,
            //   onChanged: (value) {
            //     _sliderEnabled = value;
            //     setState(() {});
            //   },
            // ),
            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              title: const Text('Habilitar Slider'),
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              },
            ),
            const AboutListTile(),
            SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/b/b9/Iron_Man_Mark_L.png/revision/latest/scale-to-width-down/240?cb=20180716231556&path-prefix=es'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
