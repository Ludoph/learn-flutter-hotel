import 'package:flutter/material.dart';
import 'package:hotels/components/HotelSection.dart';
import 'package:hotels/components/MyAppBar.dart';
import 'package:hotels/components/SearchSection.dart';

const d_green = Color(0xFF54D3C2);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          SearchSection(),
          HotelSection(),
        ]),
      ),
    );
  }
}