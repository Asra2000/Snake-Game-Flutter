import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snake_game/screens/game_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.black,
        height: height,
        child: Stack(
          children: [
            ClipPath(
                clipper: BezierClipper2(),
                child: Container(
                  color: Colors.pink,
                  height: height * 0.5,
                )),
            ClipPath(
                clipper: BezierClipper1(),
                child: Container(
                  color: Colors.orange,
                  height: height * 0.5,
                )),
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: MyWaveClipper(), //applying our custom clipper
                child: Container(
                  color: Colors.pinkAccent,
                  height: 200,
                  width: 1500,
                ),
              ),
            ),
            Positioned(
              bottom: -30,
              child: ClipPath(
                clipper: MyWaveClipper(), //applying our custom clipper
                child: Container(
                  color: Colors.orange,
                  height: 200,
                  width: 2000,
                ),
              ),
            ),
            Column(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width,
                  height: height * .45,
                ),
                Text(
                  "SNAKE GAME",
                  style: TextStyle(color: Colors.white, fontSize: 35.0),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GamePage()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Start",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                          letterSpacing: 3),
                    )),
                    width: 200,
                    height: height * .1,
                    decoration: BoxDecoration(color: Colors.orange, boxShadow: [
                      BoxShadow(
                          color: Colors.orange, blurRadius: 4, spreadRadius: 2),
                      BoxShadow(
                          color: Colors.pinkAccent, blurRadius: 10, spreadRadius: 1),
                        ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BezierClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 1000;
    final double _yScaling = size.height / 1000;
    path.lineTo(0 * _xScaling, 573 * _yScaling);
    path.cubicTo(
      75.08 * _xScaling,
      593 * _yScaling,
      172.28 * _xScaling,
      605.32 * _yScaling,
      275 * _xScaling,
      576 * _yScaling,
    );
    path.cubicTo(
      379.84000000000003 * _xScaling,
      546.07 * _yScaling,
      399.82 * _xScaling,
      498.64 * _yScaling,
      565 * _xScaling,
      415 * _yScaling,
    );
    path.cubicTo(
      677.63 * _xScaling,
      358 * _yScaling,
      748.1800000000001 * _xScaling,
      322.25 * _yScaling,
      843 * _xScaling,
      319 * _yScaling,
    );
    path.cubicTo(
      967.11 * _xScaling,
      314.75 * _yScaling,
      1068.68 * _xScaling,
      377.44 * _yScaling,
      1122 * _xScaling,
      413 * _yScaling,
    );
    path.cubicTo(
      1122 * _xScaling,
      413 * _yScaling,
      1126 * _xScaling,
      0 * _yScaling,
      1126 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      1126 * _xScaling,
      0 * _yScaling,
      0 * _xScaling,
      4 * _yScaling,
      0 * _xScaling,
      4 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      4 * _yScaling,
      0 * _xScaling,
      573 * _yScaling,
      0 * _xScaling,
      573 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class BezierClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 1000;
    final double _yScaling = size.height / 1000;
    path.lineTo(0 * _xScaling, 567 * _yScaling);
    path.cubicTo(
      136.83 * _xScaling,
      595.81 * _yScaling,
      239.66 * _xScaling,
      582.76 * _yScaling,
      309 * _xScaling,
      565 * _yScaling,
    );
    path.cubicTo(
      420.07 * _xScaling,
      536.56 * _yScaling,
      433.78 * _xScaling,
      499 * _yScaling,
      602 * _xScaling,
      446 * _yScaling,
    );
    path.cubicTo(
      720.86 * _xScaling,
      408.58 * _yScaling,
      800.55 * _xScaling,
      400.11 * _yScaling,
      875 * _xScaling,
      405 * _yScaling,
    );
    path.cubicTo(
      985.67 * _xScaling,
      412.28 * _yScaling,
      1030.8 * _xScaling,
      445.54 * _yScaling,
      1048 * _xScaling,
      460 * _yScaling,
    );
    path.cubicTo(
      1064.91 * _xScaling,
      474.21 * _yScaling,
      1108.88 * _xScaling,
      508.3 * _yScaling,
      1118 * _xScaling,
      565 * _yScaling,
    );
    path.cubicTo(
      1119.846892364267 * _xScaling,
      576.5742009278875 * _yScaling,
      1120.1830360450788 * _xScaling,
      588.3392296892381 * _yScaling,
      1119 * _xScaling,
      600 * _yScaling,
    );
    path.cubicTo(
      1119 * _xScaling,
      600 * _yScaling,
      1123 * _xScaling,
      0 * _yScaling,
      1123 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      1123 * _xScaling,
      0 * _yScaling,
      0 * _xScaling,
      2 * _yScaling,
      0 * _xScaling,
      2 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      2 * _yScaling,
      0 * _xScaling,
      567 * _yScaling,
      0 * _xScaling,
      567 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class MyWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, 40.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 40.0);

    for (int i = 0; i < 10; i++) {
      if (i % 2 == 0) {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8),
            0.0,
            size.width - ((i + 1) * size.width / 8),
            size.height - 160);
      } else {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8),
            size.height - 120,
            size.width - ((i + 1) * size.width / 8),
            size.height - 160);
      }
    }

    path.lineTo(0.0, 40.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
