import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.quiz,size: 60,),
            SizedBox(height: 30,),
            Text("Quiz App",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
            const SizedBox(height: 40),
            // Loading Spinner
            const CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}