import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.all(10),
      child: ElevatedButton(
          style:  ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
          padding: MaterialStateProperty.all(EdgeInsets.all(10)),
          ),
          onPressed: selectHandler,
          child: Text(answerText,
          style: TextStyle(fontSize: 25 , color: Colors.white),
          )
      ),
    );
  }


}
