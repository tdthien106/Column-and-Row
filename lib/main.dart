import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  @override
  Widget build(BuildContext context) {
    return C();
  }
}

Scaffold A() {
  return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          Row(children: [
            Expanded(
                flex: 2,
                child: Container(
                  height: 120,
                  color: Colors.red,
                )),
            Expanded(
                flex: 1, child: Container(height: 120, color: Colors.green)),
            Expanded(
                flex: 2, child: Container(height: 120, color: Colors.yellow)),
          ]),
          Row(children: [
            SizedBox(
              height: 240,
              child: Column(children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.black,
                    width: 50,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 50,
                    color: Colors.yellow,
                  ),
                ),
              ]),
            ),
            SizedBox(
                height: 240,
                child: Column(
                  children: [
                    Expanded(child: Container(width: 300, color: Colors.white)),
                    Expanded(child: Container(width: 300, color: Colors.brown)),
                    Expanded(child: Container(width: 300, color: Colors.cyan)),
                    Expanded(child: Container(width: 300, color: Colors.red)),
                  ],
                )),
            Expanded(
                child: Container(
              color: Colors.purple,
              height: 240,
            ))
          ]),
        ],
      ),
    ),
  );
}

Scaffold B() {
  return Scaffold(
    body: SafeArea(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(flex: 1, child: Container(height: 50, color: Colors.red)),
            Expanded(
                flex: 5, child: Container(height: 50, color: Colors.yellow)),
            Expanded(flex: 1, child: Container(height: 50, color: Colors.red)),
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(16, 32, 16, 32),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 12,
                      child: Container(height: 50, color: Colors.green)),
                  Expanded(
                      flex: 2,
                      child: Container(height: 50, color: Colors.blue)),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Container(height: 50, color: Colors.purple)),
                  Expanded(child: Container(height: 50, color: Colors.yellow)),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Container(height: 50, color: Colors.black)),
                  Expanded(child: Container(height: 50, color: Colors.red)),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Container(height: 50, color: Colors.orange)),
                  Expanded(child: Container(height: 50, color: Colors.cyan)),
                ],
              ),
            ],
          ),
        )
      ],
    )),
  );
}

Scaffold C() {
  return Scaffold(
    body: SafeArea(
        child: Column(
      children: [
        C_item1(),
        C_item2(),
      ],
    )),
  );
}

Widget C_item1() {
  return Container(
    height: 300,
    margin: const EdgeInsets.all(32),
    padding: const EdgeInsets.all(32),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Colors.red),
    child: Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.orangeAccent),
      child: Column(
        children: [
          Expanded(child: Container(color: Colors.blue)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.purple)),
                Expanded(child: Container(color: Colors.green)),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget C_item2() {
  return Container(
    height: 150,
    margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 32),
    padding: const EdgeInsets.all(32),
    decoration: const BoxDecoration(
      color: Colors.grey,
    ),
    child: Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
            )),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 8,
          child: Column(
            children: [
              Expanded(child: Container(color: Colors.green)),
              const SizedBox(
                height: 10,
              ),
              Expanded(child: Container(color: Colors.green)),
              const SizedBox(
                height: 10,
              ),
              Expanded(child: Container(color: Colors.green)),
            ],
          ),
        )
      ],
    ),
  );
}
