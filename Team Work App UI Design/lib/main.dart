import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:flutter_icons/flutter_icons.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Android StatusBar and Navigation bar Hide for better view
  await SystemChrome.setEnabledSystemUIOverlays([]);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.dark,
    home: MakeHomePage(),
  ));
}

class MakeHomePage extends StatelessWidget {
  const MakeHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigatorBarDesign(),
      body: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromRGBO(80, 120, 200, 1),
            const Color.fromRGBO(79, 59, 190, 1),
            const Color.fromRGBO(69, 48, 179, 1),
          ],
        )),
        child: CustomPaint(
          painter: CurvePainter(),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      children: [
                        _menuBarItem(40.0, 8.0),
                        _menuBarItem(20.0, 8.0),
                        _menuBarItem(0.0, 0.0),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5.0, top: 25.0),
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.white,
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.insider.com/5b4df27ac0229b1b008b4c15?width=1136&format=jpeg'),
                      radius: 25.0,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 5.0, top: 50.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hi Samarpan',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  '6 Tasks are Pending',
                  style: TextStyle(color: Colors.white70, fontSize: 18.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 3.0, right: 5.0, top: 35.0),
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height / 6,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(100, 80, 230, 1),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 100.0,
                      spreadRadius: 3.0,
                      offset: Offset(0.0, 80.0),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    _headingAndSubHeading('Mobile App Design'),
                    _headingAndSubHeading('Mike and Anita'),
                    _middleContainerLastRow(),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 20.0, top: 20.0, bottom: 20.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Monthly Review',
                      style: TextStyle(
                          color: const Color.fromRGBO(230, 230, 230, 1),
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.reviews_outlined,
                        color: Colors.white70,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height / 2.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _underUniform(
                            upperText: '22',
                            lowerText: 'Done',
                            context: context),
                        _underNonUniform(
                            upperText: '10',
                            lowerText: 'Ongoing',
                            context: context),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _underNonUniform(
                          upperText: '7',
                          lowerText: 'In progress',
                          context: context,
                          leftBox: false,
                        ),
                        _underUniform(
                          upperText: '12',
                          lowerText: 'Waiting for Review',
                          context: context,
                          leftBox: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigatorBarDesign() {
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(69, 48, 179, 1),
      selectedItemColor: Colors.lightBlue,
      unselectedItemColor: Colors.white,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Entypo.home,
              size: 26.0,
              color: Colors.white70,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.insert_drive_file_outlined,
              size: 26.0,
              color: Colors.lightBlue,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              size: 26.0,
              color: Colors.white70,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_important_outlined,
              size: 26.0,
              color: Colors.white70,
            ),
            label: ''),
      ],
    );
  }

  Widget _headingAndSubHeading(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
            left: 20.0, top: text == 'Mobile App Design' ? 20.0 : 3.0),
        child: Text(
          text,
          style: TextStyle(
              color:
                  text == 'Mobile App Design' ? Colors.white : Colors.white70,
              fontSize: text == 'Mobile App Design' ? 18.0 : 16.0),
        ),
      ),
    );
  }

  Widget _menuBarItem(double topPadding, double rightPadding) {
    return Container(
      height: 23,
      width: 3,
      margin: EdgeInsets.only(top: topPadding, right: rightPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.0),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 0.5,
            spreadRadius: 1.0,
          )
        ],
      ),
    );
  }

  Widget _middleContainerLastRow() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15.0),
            child: Stack(
              children: [
                _stackedImage(
                    firstImage: true,
                    networkImgUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/5/52/Mike_Vogel_SDCC_2014_%28cropped%29.jpg'),
                _stackedImage(
                    firstImage: false,
                    networkImgUrl:
                        'https://www.pinkvilla.com/files/styles/gallery-section/public/ananya_panday_to_sara_ali_khan_8_bollywood_divas_who_aced_the_nose_ring_look_like_a_pro_mainimage.jpg?itok=y-DkFxXf'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0, top: 10.0),
            child: Text(
              'Now',
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }

  Widget _stackedImage(
      {@required bool firstImage, @required String networkImgUrl}) {
    return Container(
      padding: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(left: firstImage ? 0.0 : 30.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(networkImgUrl),
        radius: 20.0,
      ),
    );
  }

  Widget _underUniform(
      {@required String upperText,
      @required String lowerText,
      @required BuildContext context,
      bool leftBox = true}) {
    return Container(
      margin: EdgeInsets.only(
          left: leftBox ? 10.0 : 0.0, right: leftBox ? 0.0 : 10.0),
      width: MediaQuery.of(context).size.width / 2.5,
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(100, 80, 230, 1),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              upperText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              lowerText,
              style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _underNonUniform(
      {@required String upperText,
      @required String lowerText,
      @required BuildContext context,
      bool leftBox = true}) {
    return Container(
      margin: EdgeInsets.only(
          left: leftBox ? 10.0 : 0.0, right: leftBox ? 0.0 : 10.0, top: 10.0),
      width: MediaQuery.of(context).size.width / 2.5,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(100, 80, 230, 1),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              upperText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              lowerText,
              style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color.fromRGBO(3, 169, 244, 0.3);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;

    /// Following for every arc at the screen top starting from right

    canvas.drawArc(
        Rect.fromLTWH(
            size.width - 120, -40.0, size.width - 150, size.height / 3 - 50),
        10,
        10,
        false,
        paint);

    canvas.drawArc(
        Rect.fromLTWH(
            size.width - 160, -60.0, size.width - 100, size.height / 3),
        10,
        10,
        false,
        paint);

    canvas.drawArc(
        Rect.fromLTWH(
            size.width - 200, -80.0, size.width - 50, size.height / 3 + 50),
        10,
        10,
        false,
        paint);

    canvas.drawArc(
        Rect.fromLTWH(size.width - 240, -100.0, size.width + 0,
            (size.height / 3 + 50) + 50),
        10,
        10,
        false,
        paint);

    canvas.drawArc(
        Rect.fromLTWH(size.width - 280, -120.0, size.width + 50,
            (size.height / 3 + 50) + 50 + 50),
        10,
        10,
        false,
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
