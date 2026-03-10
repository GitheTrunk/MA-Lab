import 'package:flutter/material.dart';
import '../widgets/student_card.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Student Profile')),
        body: const Center(
          child: StudentCard(
            name: 'BUN Sengleang',
            major: 'Computer Science',
            year: 4,
          ),
        ),
      ),
    );
  }
}
