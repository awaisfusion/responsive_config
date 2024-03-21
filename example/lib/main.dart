import 'package:flutter/material.dart';
import 'package:responsive_config/responsive_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // You need to initialize SizeConfig before using it
    ResponsiveConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Proportionate Height: ${getProportionateScreenHeight(100)}',
            ),
            Text(
              'Proportionate Width: ${getProportionateScreenWidth(100)}',
            ),
            Container(
              height: getProportionateScreenHeight(150),
              width: getProportionateScreenHeight(150),
              color: Colors.redAccent,
              child: Text(
                'Test',
                style: TextStyle(fontSize: getProportionateScreenWidth(50)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
