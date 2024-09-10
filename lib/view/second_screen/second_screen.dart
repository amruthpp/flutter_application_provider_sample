import 'package:flutter/material.dart';
import 'package:flutter_application_provider_sample/controller/counter_screen_controller.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            IconButton(onPressed: (){},
             icon: Icon(Icons.add)),
             IconButton(onPressed: (){
              context.read<CounterScreenController>().decrement();
             }, 
             icon: Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}