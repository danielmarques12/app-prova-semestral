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
  final Widget redirect = BootcampInfoPage();

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
                    BootcampWidget(redirect, "Imersão React", AppImages.react),
                    BootcampWidget(
                        redirect, "Backend avançado", AppImages.backend),
                    BootcampWidget(
                        redirect, "Metodologias ágeis", AppImages.agile),
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
