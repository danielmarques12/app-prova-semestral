import 'package:app/core/app_gradients.dart';
import 'package:app/core/app_images.dart';
import 'package:app/pages/bootcampInfo/bootcampInfo_page.dart';
import 'package:app/pages/home/home_page.dart';
import 'package:app/shared/bootcamp_widget.dart';
import 'package:app/shared/button_redirect_widget.dart';
import 'package:app/shared/title_widget.dart';
import 'package:flutter/material.dart';

class BootcampsListPage extends StatefulWidget {
  @override
  _BootcampsListPageState createState() => _BootcampsListPageState();
}

class _BootcampsListPageState extends State<BootcampsListPage> {
  final Widget redirectReact = BootcampInfoPage(
      "Imersão React",
      AppImages.react,
      "O principal objetivo de um desenvolvedor de software é sem dúvida construir aplicações, então venha aprender conosco.");
  final Widget redirectBackend = BootcampInfoPage(
      "Back-end com Node",
      AppImages.backend,
      "Aprenda a desenvolver aplicações web com esse curso completo de NodeJS e MongoDB, um curso 100% prático.");
  final Widget redirectAgil = BootcampInfoPage(
      "Metodologias ágeis",
      AppImages.agile,
      "SEM DÚVIDA, este é o curso de SCRUM (Scrum Agile) mais simples, completo, prático e objetivo que você encontrará na internet.");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(gradient: AppGradients.linear),
          child: Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Column(
              children: [
                TitleWidget("Conheça os Bootcamps"),
                GridView.count(
                  shrinkWrap: true,
                  childAspectRatio: 2,
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 30, bottom: 10),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  crossAxisCount: 1,
                  children: [
                    BootcampWidget(
                        redirectReact, "Imersão React", AppImages.react),
                    BootcampWidget(
                        redirectBackend, "Backend com Node", AppImages.backend),
                    BootcampWidget(
                        redirectAgil, "Metodologias ágeis", AppImages.agile),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ButtonRedirectWidget(HomePage(), "Voltar", 132.5),
                )
              ],
            ),
          )),
    );
  }
}
