import 'package:flutter/material.dart';

void statefulbasic() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isHidden = false;

  void hide() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(titleLarge: TextStyle(color: Colors.red)),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isHidden ? const SizedBox() : const MyText(),
              IconButton(
                onPressed: hide,
                icon: const Icon(Icons.remove_red_eye),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyText extends StatefulWidget {
  const MyText({super.key});

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  void initState() {
    super.initState();
    print("Init");
  }

  @override
  void dispose() {
    super.dispose();
    print("Dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Text(
      "Click Counter",
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
