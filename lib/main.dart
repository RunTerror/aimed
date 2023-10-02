import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            extendBody: false,
            body: Stack(
              children: [
                SizedBox(
                  height: h,
                  width: w,
                ),
                Positioned(
                    left: (w - w / 1.1) / 2,
                    top: h / 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: w/60),
                      width: w / 1.1,
                      height: h / 8,
                      color: Colors.pink,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Container(height: h/25, width: w/2.2,color: Colors.blue,),
                        Container(height: h/25,width: w/1.2, color: Colors.blue,)
                      ],),
                    )),
                Positioned(
                    left: (w - w / 1.1) / 2,
                    top: h / 10 + h/4,
                    child: Container(
                      padding: EdgeInsets.only(left: w/60,right: w/60, bottom: h/80),
                      width: w / 1.1,
                      height: h / 8,
                      color: Colors.pink,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        const Spacer(),
                        Container(height: h/25,color: Colors.blue,)
                      ],),
                    )),
                Positioned(left: (w-w/3)/2, top: h/10+h/4.5, child: Container(height: h/20,color: Colors.green,width: w/3,))

              ],
            )));
  }
}
