import 'package:flutter/material.dart';
import 'package:flutter_application_provider_sample/controller/counter_screen_controller.dart';
import 'package:flutter_application_provider_sample/view/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterScreenController(),
      child: MaterialApp(
        home: HomeScreen(
          
        ),
      ),
    );
  }
}