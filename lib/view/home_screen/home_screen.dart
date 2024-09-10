import 'package:flutter/material.dart';
import 'package:flutter_application_provider_sample/controller/counter_screen_controller.dart';
import 'package:flutter_application_provider_sample/view/second_screen/second_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        context.read<CounterScreenController>().increment();
      }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${context.watch<CounterScreenController>().counter}"),
            IconButton(onPressed: (){

         Navigator.push(context,
          MaterialPageRoute(builder:
           (context) => SecondScreen(),));

            }, 
            icon: Icon(Icons.arrow_right))
          ],
        ),
      
      ),
      
    );
  }
}