import 'package:flutter/material.dart';
import 'package:hotels/components/HotelSection.dart';
import 'package:hotels/components/MyAppBar.dart';
import 'package:hotels/components/SearchSection.dart';

mixin HomePage implements StatelessWidget {
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