import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
  double _sliderValue = 100;
  bool _sliderEnable = true;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),

      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            
            //divisiones en el slider
            //divisions: 10,
            onChanged: _sliderEnable ? (value){
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),

          // Checkbox(
          //   value: _sliderEnable, 
          //   onChanged: (value) {
          //     _sliderEnable = value ?? true;
          //     setState(() {
                
          //     });
          //   }
          // ),



          // Switch(
          //   value: _sliderEnable, 
          //   onChanged: (value) => setState(() {
          //     _sliderEnable = value;})
          // ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() {
              _sliderEnable = value ?? true;})
          ),

        
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() {
              _sliderEnable = value;})
          ),

          const AboutListTile(),


          //permite hacer scroll cuando el contenido no cabe en la pantalla
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://i.pinimg.com/originals/46/17/12/461712bf8cea501c3ed9f1a84ed5b86e.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

        ],
      )
    );
  }
}