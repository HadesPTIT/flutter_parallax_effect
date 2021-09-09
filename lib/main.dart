import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parallax_effect/component/dummy.dart';
import 'package:flutter_parallax_effect/location_parallax_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: _listLocations(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _listLocations() {
    return locations
        .map(
          (e) => LocationParallaxWidget(
            imageUrl: e.imageUrl,
            name: e.name,
            country: e.place,
          ),
        )
        .toList();
  }
}
