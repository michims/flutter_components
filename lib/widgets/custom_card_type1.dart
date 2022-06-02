import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Aute reprehenderit in non labore voluptate. Eu cupidatat duis commodo laborum non anim incididunt et excepteur fugiat ipsum. Quis officia mollit fugiat excepteur mollit qui do dolore enim. Do nostrud elit anim sunt laboris.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancel'),
                  
                ),

                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}