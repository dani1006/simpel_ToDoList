import 'package:flutter/material.dart';
import 'package:simpel_todo/screen/home_page.dart';
import 'package:simpel_todo/utilities/colors.dart';
import 'package:simpel_todo/utilities/text_style.dart';

class OpenScreen extends StatelessWidget {
  const OpenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Todo", style: heading1(primary200)),
                        TextSpan(text: "List", style: heading1(Colors.white)),
                      ],
                    ),
                  ),
                  Text(
                    "Lets get start your activity",
                    style: text3(Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset('assets/images/Asset.png'),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                          // HomePage();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primary200,
                            padding: const EdgeInsets.all(10),
                            shape: const CircleBorder(),
                            shadowColor: Colors.grey),
                        child: Text(
                          "Go",
                          style: heading2(Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
