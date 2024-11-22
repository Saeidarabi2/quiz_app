import 'package:flutter/material.dart';
import 'package:quiz/Question.dart';


void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List <Icon> snokiper = [];

  List <Qusestion> qusestionlist =[
    Qusestion( Question: 'you are a buy ' , Answers: true ) ,
    Qusestion( Question: 'application is Run ?', Answers:  true),
    Qusestion( Question: 'Saied is a best ?', Answers:  true ),
    Qusestion( Question: 'are you from jiboti ?' , Answers:  false),
    Qusestion( Question: 'tehran is a good city', Answers:  true ),
    Qusestion( Question: 'Approximately one quarter of human bones are in the feet.', Answers: true),
    Qusestion( Question: 'A slug\'s blood is green.', Answers: true),
    Qusestion( Question: 'Approximately one quarter of human bones are in the feet.', Answers: true),
    Qusestion( Question: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', Answers: true),
    Qusestion( Question: 'It is illegal to pee in the Ocean in Portugal.', Answers: true),
    Qusestion( Question: 'No piece of square dry paper can be folded in half more than 7 times.', Answers: false),
    Qusestion( Question: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',Answers: true),
    Qusestion( Question: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', Answers: false),
    Qusestion( Question: 'The total surface area of two human lungs is approximately 70 square metres.', Answers: true),
    Qusestion( Question: 'Google was originally called \"Backrub\".', Answers: true),
    Qusestion( Question: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', Answers: true),
    Qusestion( Question: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', Answers: true),
  ];

  int qusestionnumber = 0 ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                qusestionlist [qusestionnumber].Qusestiontext ,
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.white,
              fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                textStyle: TextStyle(fontSize: 27),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: (){
                bool createanswers = qusestionlist[qusestionnumber].Answerstext ;
                if( createanswers == true){
                  Icon(Icons.check, color: Colors.green);
                } else {
                  Icon(Icons.close , color: Colors.red);
                };
                setState(() {
                  qusestionnumber++;
                  if (qusestionnumber == 16){
                    qusestionnumber=1;
                  }
                });
              },
              child: Text('true'),
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                textStyle: TextStyle(fontSize: 27),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: (){
                bool createanswers = qusestionlist [qusestionnumber].Answerstext ;
                if( createanswers == false ){
                  Icon(Icons.check ,color: Colors.green);
                } else {
                  Icon(Icons.close,color: Colors.red);
                };
                setState(() {
                  qusestionnumber++;
                  if (qusestionnumber == 16){
                    qusestionnumber=1;
                  }
                });
              },
              child: Text('false'),
            ),
          ),
        ),
        Row(
          children: snokiper ,
        )
      ],
    );
  }
}

