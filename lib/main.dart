import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const d_green = Color(0xFF54D3C2);

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
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
      body: Container(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.grey[800], size: 20,), 
        onPressed: null,
      ),
      title: Text('Explore', style: GoogleFonts.nunito(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800), ),
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.grey[800], size: 20,), 
          onPressed: null,
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}