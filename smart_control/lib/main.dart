
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_control/models/enum.dart';
import 'package:smart_control/models/menu_info.dart';
import 'package:smart_control/screens/homepage.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: ChangeNotifierProvider<MenuInfo>(
        create: (context) => MenuInfo(MenuType.clock, title: '', imageSource: ''),
        child: SafeArea(child: HomePage()),
      ),
    );
  }
}