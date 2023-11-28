import 'package:flutter/material.dart';
import 'package:simpel_todo/utilities/colors.dart';
import 'package:simpel_todo/utilities/text_style.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String description;
  const DetailPage({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("Detail"),
        centerTitle: true,
        backgroundColor: primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: heading2(Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                description,
                style: text4(Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
