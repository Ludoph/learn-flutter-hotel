import 'package:flutter/material.dart';

class hotelCard extends StatelessWidget {
  final Map hotelData; 
  hotelCard(this.hotelData);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(hotelData['photo'],
      ),
    );
  }
}