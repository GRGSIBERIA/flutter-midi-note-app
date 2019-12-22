import 'package:flutter/material.dart';
import 'header.dart';
import 'navigation.dart';

void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget
{
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			home: Scaffold(
				appBar: Header(),
				body: Center(child: Text("ホゲ")),
				bottomNavigationBar: Navigation(),
			)
		);
	}
}