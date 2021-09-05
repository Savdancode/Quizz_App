import 'package:flutter/material.dart';
import 'package:quiz_app/Store/quizz_class.dart';

class Quizzer extends StatefulWidget {
  const Quizzer({Key? key}) : super(key: key);

  @override
  _QuizzerState createState() => _QuizzerState();
}

class _QuizzerState extends State<Quizzer> {
  List<Widget> scoreKeeper = [];
  int quistionNumber = 0;
  List<Quistion>? quistionsBank = [
    Quistion(q: 'តើ​ វាហា​ សាប់ក្តមួយថ្ងៃ៣ដងមែនទេ?', a: true),
    Quistion(q: 'តើ វាហា ចូលចិត្តមើលរឿងសិចដែរឬទេ?', a: true),
    Quistion(q: 'តើ ឈុន​ សាប់ក្តមួយថ្ងៃ៣ដងដូច វាហា ដែរមែនទេ?', a: false),
    Quistion(q: 'តើ វាហា មើលរឿងសិចរាល់ថ្ងៃមែនដែរឬទេ?', a: true),
    Quistion(q: 'តើ​ សៅដេន ជា​ Pro Lancelot Player មែនទេ?', a: true),
    Quistion(q: 'តើ​ ណារិទ្ធ សាប់ក្ដដែរឬទេ?', a: true),
    Quistion(q: 'តើ សៅដេន ជាបុរសស្មោះស្នេហ៍មែនទេ?', a: true),
    Quistion(q: 'តើ វិរ: សាប់ក្តមួយអាទិត្យ១០ដងមែនទេ?', a: false),
    Quistion(q: 'តើ បុិច សាប់ក្តពេលចូលបន្ទប់ទឹកមែនទេ?', a: false),
    Quistion(q: 'តើ ឈុន ជាបុរសស្មោះស្នេហ៍មែនទេ?', a: true),
    Quistion(q: 'តើ វិរ: សាប់ក្តមួយថ្ងែ៣ដងមែនទេ?', a: false),
    Quistion(q: 'តើ សុវណ្ណាភូមិ សាប់ក្តមួយអាទិត្យ១០ដងមែនទេ?', a: false),
    Quistion(q: 'តើ សិវណ្ណាភូមិ សាប់ក្តដែរឬទេ?', a: false),
    Quistion(q: 'តើ បុិច ចុះអាចម៍មិនចាក់ទឺកមែនទេ?', a: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quistionsBank![quistionNumber].quistionText.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.green[900],
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  child: Text(
                    'True',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    if (quistionNumber < quistionsBank!.length - 1) {
                      var myAnser =
                          quistionsBank![quistionNumber].quistionAnswer;
                      if (myAnser == true) {
                        setState(() {
                          quistionNumber++;
                          scoreKeeper.add(
                            Icon(
                              Icons.check,
                              color: Colors.green[900],
                              size: 30,
                            ),
                          );
                        });
                      } else {
                        setState(() {
                          quistionNumber++;
                          scoreKeeper.add(
                            Icon(
                              Icons.close,
                              color: Colors.red[900],
                              size: 30,
                            ),
                          );
                        });
                      }
                    }
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red[900],
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    if (quistionNumber < quistionsBank!.length - 1) {
                      var myAnser =
                          quistionsBank![quistionNumber].quistionAnswer;
                      if (myAnser == true) {
                        setState(() {
                          quistionNumber++;
                          scoreKeeper.add(
                            Icon(
                              Icons.check,
                              color: Colors.green[900],
                              size: 30,
                            ),
                          );
                        });
                      } else {
                        setState(() {
                          quistionNumber++;
                          scoreKeeper.add(
                            Icon(
                              Icons.close,
                              color: Colors.red[900],
                              size: 30,
                            ),
                          );
                        });
                      }
                    }
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
