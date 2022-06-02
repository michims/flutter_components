import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData().copyWith(
      //color primario
      primaryColor: primary,

      //app bar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
        // colorear los btones en base al color primario
        //primary es la propiedad, el segundo es el definido como el color primario
        style: TextButton.styleFrom(primary: primary),
      ),

      //floating action button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
      ),

      //eleveted button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ),

      //input decoration theme
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(
          color: primary,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primary 
          ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primary 
          ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            //color: primary 
          ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),
      )
    );

  //tema oscuro
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: primary,

      //app bar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ),

      
      scaffoldBackgroundColor: Colors.black);

      

      
}
