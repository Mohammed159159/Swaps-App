// Start Header Container class
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swap_app/styles/colors.dart';

class HeaderContainer extends StatelessWidget {
  final text;
  final height;

  HeaderContainer({this.text, this.height});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClip(),
      child: Container(
        height: height,
        decoration: BoxDecoration(gradient: gradient),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Text(
                  text,
                  style: GoogleFonts.getFont("Playball",
                      fontSize: 50, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}

class MyClip extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path()
      ..moveTo(0, size.height * 0.9)
      ..quadraticBezierTo(
          size.width * 0.27, size.height, size.width * 0.5, size.height * 0.8)
      ..quadraticBezierTo(
          size.width * 0.77, size.height * 0.6, size.width, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
// End Header Container class