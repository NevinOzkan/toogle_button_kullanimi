import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var toggleDurumlar = [false, true, false];
  int secilenToggleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ToggleButtons(
              children: [
                Icon(Icons.looks_one),
                Icon(Icons.looks_two),
                Icon(Icons.looks_3),
              ],
              isSelected: toggleDurumlar,
              onPressed: (int secilenIndex) {
                secilenToggleIndex = secilenIndex;
                print("${secilenIndex + 1}. toggle secildi");

                setState(() {
                  toggleDurumlar[secilenIndex] = toggleDurumlar[secilenIndex];
                });
              },
            ),
            ElevatedButton(
              child: Text("Göster"),
              onPressed: () {
                print("En Son ${secilenToggleIndex + 1}. toggle seçildi");
              },
            ),
          ],
        ),
      ),
    );
  }
}
