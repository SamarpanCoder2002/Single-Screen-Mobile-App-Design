import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Android StatusBar and Navigation Hide for better look
  await SystemChrome.setEnabledSystemUIOverlays([]);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MakeDesignScreen(),
  ));
}

class MakeDesignScreen extends StatelessWidget {
  const MakeDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(219, 233, 246, 1),
        ),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(40.0),
              child: Image.asset(
                'assets/logo.png',
                height: MediaQuery.of(context).size.height / 2,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10.0, left: 40.0),
                child: Text(
                  'Manage your\ndaily tasks',
                  style: TextStyle(
                      color: const Color.fromRGBO(19, 39, 88, 1),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                margin: EdgeInsets.only(top: 25.0, left: 40.0),
                child: Text(
                  'Team and Project management with\nsolution providing app',
                  style: TextStyle(
                      color: const Color.fromRGBO(112, 110, 200, 1),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                )),
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(top: 40.0, left: 50.0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(240, 245, 249, 1),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black12,
                          spreadRadius: 3.0,
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 58.0,
                    left: 76.0,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: const Color.fromRGBO(19, 39, 88, 1),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
