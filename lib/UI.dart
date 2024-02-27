// import 'package:flutter/material.dart';
// import 'dart:ui';
//
// import 'package:glassmorphism/glassmorphism.dart';
//
// class GlassmorphicSample extends StatefulWidget {
//   @override
//   State<GlassmorphicSample> createState() => GlassmorphicSampleState();
// }
//
// class GlassmorphicSampleState extends State<GlassmorphicSample> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: Stack(
//           children: [
//             Image.network(
//               "https://github.com/RitickSaha/glassmophism/blob/master/example/assets/bg.png?raw=true",
//               fit: BoxFit.cover,
//               height: double.infinity,
//               width: double.infinity,
//               scale: 1,
//             ),
//             SafeArea(
//               child: Center(
//                 child: GlassmorphicContainer(
//                     width: 350,
//                     height: 750,
//                     borderRadius: 20,
//                     blur: 20,
//                     alignment: Alignment.bottomCenter,
//                     border: 2,
//                     linearGradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         colors: [
//                           Color(0xFFffffff).withOpacity(0.1),
//                           Color(0xFFFFFFFF).withOpacity(0.05),
//                         ],
//                         stops: [
//                           0.1,
//                           1,
//                         ]),
//                     borderGradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: [
//                         Color(0xFFffffff).withOpacity(0.5),
//                         Color((0xFFFFFFFF)).withOpacity(0.5),
//                       ],
//                     ),
//                     child: null),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 24,
                spreadRadius: 16,
                color: Colors.black.withOpacity(0.2),
              )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 40.0,
                  sigmaY: 40.0,
                ),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white.withOpacity(0.2),
                      )),
                  child: Center(
                      child: Text(
                        "Glass Morphism",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.6)),
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}