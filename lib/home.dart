import 'package:flutter/material.dart';
import 'question.dart';
class HomeApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>(); // class routes
   HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
       navigatorKey: navigatorKey,
      initialRoute: "/",
       routes: {
        "/question": (context) => const Question()
      },
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 252, 208, 208)),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assert/icon.png'),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: (){ navigatorKey.currentState?.pushNamed("/question");},
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text('Start Quiz'), Icon(Icons.next_plan)],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
