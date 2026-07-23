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
        centerTitle: true,
        leading: const Icon(Icons.home),
        actions: [
          Icon(Icons.person),
          Icon(Icons.access_alarm)
        ],
        elevation: 8,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(24),
            child: Text("Salut les codeurs")
        ),
      ),
      body: FlutterLogo(
        size: MediaQuery.of(context).size.width / 2,
        style: FlutterLogoStyle.stacked,
        textColor: Colors.blueAccent,
        duration: const Duration(microseconds: 2000),
        curve: Curves.bounceIn,
      ),
      
    );
  }

}


