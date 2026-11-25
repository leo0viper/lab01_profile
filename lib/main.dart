import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab L1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _likes = 0;

  void _incrementLikes() {
    setState(() {
      _likes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab L1 · 67128389'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person,
              size: 96,
              color: Colors.black87,
            ),
            const SizedBox(height: 12),
            const Text(
              'Sophon Thinwatklang - 67128389',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 6),
            Text(
              'Likes: $_likes',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: _incrementLikes,
              child: const Text('Like'),
            ),
          ],
        ),
      ),
    );
  }
}