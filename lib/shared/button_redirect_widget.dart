import 'package:flutter/material.dart';

class ButtonRedirectWidget extends StatelessWidget {
  ButtonRedirectWidget(this.redirect, this.text, this.width);

  final Widget redirect;
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
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => this.redirect));
            },
            child: Text(this.text),
          ),
        ],
      ),
    );
  }
}
