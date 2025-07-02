import 'package:flutter/material.dart';
import 'package:study_flutter4/screen/home_screen.dart';
void main() {
  ///flutter 프레임워크가 실행할 준비가 될떄 까지 기다림.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(

      ),
    )
  );
}


