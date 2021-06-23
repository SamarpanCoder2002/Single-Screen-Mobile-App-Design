import 'package:design3/Screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main()async{

  WidgetsFlutterBinding.ensureInitialized();

  /// Android StatusBar and Navigation Hide for better look
  await SystemChrome.setEnabledSystemUIOverlays([]);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}