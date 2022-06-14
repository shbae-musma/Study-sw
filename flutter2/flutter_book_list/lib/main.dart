import 'package:flutter/material.dart';
import 'package:flutter_book_list/screens/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '드라마 리스트 앱 - Jira 테스트 branch',
      home: ListScreen(),
    );
  }
}
