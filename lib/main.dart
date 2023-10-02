import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.width;
    var w=MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        extendBody: false,
        body: Padding(
          padding:EdgeInsets.symmetric(horizontal: (w-w/1.1)/2),
          child: Column(
            children: [
            const SizedBox(height: 100,),
            Container(
              alignment: Alignment.center,
              width: w/1.1, height: h/3,color: Colors.pink,
            padding:const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(height: h/8,width: w/2,color: Colors.grey,),
              Container(height: h/8,width: w,color: Colors.green,),
            ],),
            )
          ],),
        )
      )
    );
  }
}

