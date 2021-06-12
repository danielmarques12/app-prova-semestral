import 'package:app/core/app_gradients.dart';
import 'package:app/core/app_images.dart';
import 'package:app/pages/bootcampsList/bootcampsList_page.dart';
import 'package:app/shared/button_redirect_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String text =
      "Através de bootcamps intensivos, nossa plataforma ensina as habilidades e a mentalidade empreendedora que você precisa para prosperar - agora e no futuro.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Image.asset(AppImages.home, width: 400),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Bootcamps PS13SI",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Text(
                        this.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: ButtonRedirectWidget(
                        BootcampsListPage(), "Explorar", 120),
                  )
                ],
              ),
            )));
  }
}
