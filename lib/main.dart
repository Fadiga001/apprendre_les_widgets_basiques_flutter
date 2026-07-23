import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(appTitle: 'Widgets basiques',));
}

class MyApp extends StatelessWidget {
  final String appTitle;
  const MyApp({super.key, required this.appTitle});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: MyHomePage(title: appTitle,),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      ),
      body: FlutterLogo(size: 450,),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            
          },
          child: const Icon(Icons.send),
      ),
      drawer: const Drawer(),
      endDrawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "")
      ]),
    );
  }

}


