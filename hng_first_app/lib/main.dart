import 'package:flutter/material.dart';
import 'package:hng_first_app/home_screen.dart';





void main(){
  runApp(
    const  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body:  HomeScreen(),
      ),
    )
  );
}