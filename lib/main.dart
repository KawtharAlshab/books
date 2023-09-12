import 'package:bloc/bloc.dart';
import 'package:cubit_test/blocObserver.dart';
import 'package:cubit_test/counter/counter.dart';
import 'package:cubit_test/post/post.dart';
import 'package:flutter/material.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Post(),
    );
  }
}
