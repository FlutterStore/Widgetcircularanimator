
import 'package:flutter/material.dart';
import 'package:spring/spring.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {

  
  @override
  Widget build(BuildContext context) {

    final SpringController springController =
      SpringController(initialAnim: Motion.mirror);

    return Scaffold(
      appBar: AppBar(
        title: const Text('WidgetCircularAnimator',style: TextStyle(color: Colors.white,fontSize: 15)),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: WidgetCircularAnimator(
          size: 250,
          innerIconsSize: 5,
          outerIconsSize: 5,reverse: false,
          innerAnimation: Curves.easeInOutBack,
          outerAnimation: Curves.easeInOutBack,
          innerColor: Colors.deepPurple,
          outerColor: Colors.green,
          innerAnimationSeconds: 10,
          outerAnimationSeconds: 10,
          child: Container(
            decoration:BoxDecoration(
              shape: BoxShape.circle, color: Colors.grey[200],
              image: DecorationImage(
                image: AssetImage("assets/images/hathi.png",),fit: BoxFit.cover
              )
            ),
            // child: Image.asset(
            //   "assets/images/hathi.png",
            // ),
          ),
        ),
      ),
    );
  }
}