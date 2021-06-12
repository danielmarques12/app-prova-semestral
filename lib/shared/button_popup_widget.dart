import 'package:app/shared/subscription_popup_widget.dart';
import 'package:flutter/material.dart';

class ButtonPopUpWidget extends StatelessWidget {
  ButtonPopUpWidget(this.text, this.width);

  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: width, vertical: 17),
                textStyle: TextStyle(fontSize: 25),
                primary: Color.fromRGBO(255, 87, 87, 1)),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => SubscriptionPopupWidget());
            },
            child: Text(this.text),
          ),
        ],
      ),
    );
  }
}
