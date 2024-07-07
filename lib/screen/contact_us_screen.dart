import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ข่าวสาร'),
      ),
      body: Container(
        child: Column(children: [
          Text('ข่าวสาร วัดกู่เต้า'),
          Text(
              "ข่าวสาร วัดกู่เต้าม  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
        ]),
      ),
    );
  }
}
