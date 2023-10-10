import 'package:banking_app/presentation/screens/main_page.dart';
import 'package:banking_app/views/continue_button.dart';
import 'package:banking_app/views/page_view.dart';
import 'package:banking_app/views/top_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  bool isPressed = false;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.sizeOf(context).height * .07,
            bottom: MediaQuery.sizeOf(context).height * .05,
          ),

          /// Body
          child: Column(
            children: [

              /// TopBar
              TopBar(isPressed: isPressed),

              /// Page View
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .7,
                child: MyPageView(controller: controller),
              ),

              const Spacer(),

              /// Continue Button
              ContinueButton(
                controller: controller,
                onTap: () {
                  setState(() {
                    if (isPressed == true) {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (builder) => const MainPage(),
                        ),
                      );
                    } else {
                      controller.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear,
                      );
                      isPressed = true;
                    }
                  });
                },
              ),

              SizedBox(height: MediaQuery.sizeOf(context).height * .03),

              /// Privacy and Policy
              const Text(
                "Terms of use  |  Privacy Policy",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFBDBDBD),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildDivider(BuildContext context, bool pressed) {
  return SizedBox(
    height: 3,
    width: MediaQuery.sizeOf(context).width * .44,
    child: const ColoredBox(
      color: Colors.blue,
    ),
  );
}
