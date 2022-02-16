import 'package:assetsproject/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductCom(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: const [
              Image(
                image: AssetImage('assets/images/download.jpeg'),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Image(image: AssetImage('assets/images/download.jpeg')),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Flutter Fonts',
          style: TextStyle(fontFamily: 'GoogleFont2'),
        ),
      ),
    );
  }
}
