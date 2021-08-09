import 'package:electrical_store_app/style.dart';
import 'file:///C:/FlutterAppsWithAndroid/electrical_store_app/lib/widgets/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        'إليكترونيك للمنتجات الألكترونية',
        style: GoogleFonts.getFont('Almarai'),
      ),
      centerTitle: false,
      actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
    );
  }
}
