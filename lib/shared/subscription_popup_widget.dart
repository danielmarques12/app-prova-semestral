import 'package:app/pages/bootcampsList/bootcampsList_page.dart';
import 'package:flutter/material.dart';

class SubscriptionPopupWidget extends StatelessWidget {
  SubscriptionPopupWidget();

  final String title = "Inscrição no bootcamp";
  final String content = "Inscrição realizada com sucesso";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(fontSize: 24),
      ),
      content: Text(content, style: TextStyle(fontSize: 20)),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => BootcampsListPage()));
            },
            child: Text("Confirmar", style: TextStyle(fontSize: 20)))
      ],
    );
  }
}
