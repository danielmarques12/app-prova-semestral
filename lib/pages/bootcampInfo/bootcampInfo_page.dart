import 'package:app/core/app_gradients.dart';
import 'package:app/shared/button_popup_widget.dart';
import 'package:flutter/material.dart';

class BootcampInfoPage extends StatelessWidget {
  BootcampInfoPage(this.name, this.image, this.description);

  final String description;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(gradient: AppGradients.linear),
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
            child: Column(
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(image)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 165,
                ),
                ButtonPopUpWidget("Inscreva-se", 100)
              ],
            ),
          )),
    );
  }
}
