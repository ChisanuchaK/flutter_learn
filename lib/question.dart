import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});
  @override
  State<Question> createState() {
    return _QuestionState();
  }
}
class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  home: Scaffold(
    body: Align(
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          const SizedBox(height: 100 , width: 10,),
           ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_rounded),
        ),

        ],
     
      ),
    ),
  ),
);

  }
}