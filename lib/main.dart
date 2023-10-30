import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/components/HotelSection.dart';
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

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: null,
      ),
      title: Text(
        'Explore',
        style: GoogleFonts.nunito(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(
            Icons.place,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

// class SearchSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey[100],
//       padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.only(left: 10),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey,
//                         blurRadius: 4,
//                         offset: Offset(0, 3), // changes position of shadow
//                       ),
//                     ],
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Recherche',
//                       contentPadding: EdgeInsets.all(10),
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(width: 10),
//               Container(
//                 height: 50,
//                 width: 50,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey,
//                       blurRadius: 4,
//                       offset: Offset(0, 4), // changes position of shadow
//                     ),
//                   ],
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(25),
//                   ),
//                 ),
//                 child: ElevatedButton(
//                   onPressed: () {}, 
//                   child: Icon(
//                     Icons.search
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     shape: CircleBorder(),
//                     padding: EdgeInsets.all(10),
//                     backgroundColor: d_green, 
//                   ), 
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 margin: EdgeInsets.all(10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Choisir une date",
//                       style: GoogleFonts.nunito(
//                         color: Colors.grey,
//                         fontSize: 15,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Text("12 Déc - 22 Déc",
//                       style: GoogleFonts.nunito(
//                         color: Colors.black,
//                         fontSize: 17,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Nombre de chambres",
//                       style: GoogleFonts.nunito(
//                         color: Colors.grey,
//                         fontSize: 15,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Text("1 Chambre - 2 Adultes",
//                       style: GoogleFonts.nunito(
//                         color: Colors.black,
//                         fontSize: 17,
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


