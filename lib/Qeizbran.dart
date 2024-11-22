
import 'package:quiz/Question.dart';

class Qeizbran {
  int _qusestionnumber = 2 ;

  List <Qusestion> _qusestionlist =[
    Qusestion( Question: 'you are a buy? ' , Answers: true ) ,
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

  void nextquesetion(){
    if(_qusestionnumber < _qusestionlist.length-1 ){
      _qusestionnumber+1 ;
    }
  }

  String getQusestionText (){
    return _qusestionlist[_qusestionnumber].Qusestiontext;
  }

  bool getanswers (){
    return _qusestionlist[_qusestionnumber].Answerstext;
  }
}
