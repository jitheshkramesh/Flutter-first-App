import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _buttonText;
  final VoidCallback selectHandler;

  Answer(this._buttonText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10.0, left: 50.0, right: 30.0, bottom: 20.0),
      child: RaisedButton(
        color: Colors.blueAccent,
        child: Text(
          _buttonText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
