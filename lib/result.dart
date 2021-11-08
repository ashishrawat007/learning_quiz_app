import  'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final VoidCallback resetHandler ;
  Result( this.resultScore, this.resetHandler);


  String get resultPhrase
  {
    var resultText = 'You Did it ' ;
    if( resultScore <= 8)
      {
        resultText = "You Are Awesome" ;
      }
    else if( resultScore <= 12)
      {
        resultText = "Pretty Likable";
      }
    else if(resultScore <= 16)
      {
        resultText = "Pretty Amazing" ;
      }
    else
      {
        resultText = "You Are Fool";
      }
    return resultText ;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text( resultPhrase.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold ,
                fontSize: 30
            ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
            primary: Colors.black
            ),
              child: Text("Restart Quiz"),
              onPressed: resetHandler,
            )
          ],
        )
    );
  }
}
