import 'package:app/core/app_images.dart';
import 'package:flutter/material.dart';

class BootcampWidget extends StatelessWidget {
  BootcampWidget(this.redirect, this.text, this.image);

  final String image;
  final Widget redirect;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => this.redirect));
      },
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                image,
                width: 200,
              ),
            ),
            SizedBox(
              height: 7.5,
            ),
            Center(
              child: Text(
                this.text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
