import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// List <String> questions= [
//   "Flutter is best framework in mobile application development",

//   "Ahmed is not flutter certfied mobile application developer",

//   "flutter was released in 2017",
//   ];
//   List <bool> answers=[
//     true,
//     false,
//     true,
//   ];

  List<Question> questions = [
    Question(
        q: "Flutter is best framework in mobile application development",
        a: true),
    Question(
        q: "Ahmed is not flutter certfied mobile application developer",
        a: false),
    Question(q: "flutter was released in 2017", a: true),
  ];

  int questionIndex = 0;
  int correctAnswers = 0;
  int falseAnswers = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  questions[questionIndex].questionName!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 22, right: 22),
                      height: 65,
                      child: ElevatedButton(
                        //  style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          final isCorrect =
                              questions[questionIndex].questionName;
                          if (isCorrect == true) {
                            print('Waa saxday');
                            setState(() {
                              correctAnswers = correctAnswers + 1;
                            });
                          } else {
                            print('Waa khaladay');
                            falseAnswers = falseAnswers + 1;
                          }
                          setState(() {
                            if (questionIndex < questions.length - 1)
                              questionIndex++;
                            else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Result(
                                      answer: correctAnswers,
                                      falses: falseAnswers),
                                ),
                              );
                            }
                          });
                        },
                        child: const Text(
                          'True',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 22,
                        right: 22,
                        bottom: 18,
                      ),
                      height: 65,
                      child: ElevatedButton(
                        //  style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          final isFalse =
                              questions[questionIndex].questionAnswer;
                          if (isFalse == false) {
                            print('Waa saxday');
                            setState(() {
                              correctAnswers = correctAnswers + 1;
                            });
                          } else {
                            print('Waa qaladay');
                            setState(() {
                              falseAnswers + 1;
                            });
                          }
                          setState(() {
                            if (questionIndex < questions.length - 1)
                              questionIndex++;
                            else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Result(
                                      answer: correctAnswers,
                                      falses: falseAnswers),
                                ),
                              );
                            }
                          });
                        },
                        child: const Text(
                          'False',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(home: Home()));
// }

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightGreen,
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Text(
//                 'HALKAAN WA MESHA EE SU\'AASHA KASO MUQANEYSO',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   letterSpacing: 2.0,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.only(left: 22, right: 22),
//                     height: 65,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Text(
//                         'True',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.only(left: 22, right: 22),
//                     height: 65,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Text(
//                         'False',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
