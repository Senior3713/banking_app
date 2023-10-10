import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  final PageController controller;

  const MyPageView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller,
      children: [
        Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * .1),
            Image(
              image: const AssetImage("assets/images/intro_1.png"),
              width: MediaQuery.sizeOf(context).width * .7,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * .12,
                  right: MediaQuery.sizeOf(context).width * .12,
                  top: MediaQuery.sizeOf(context).height * .05,
                ),
                child: const Text(
                  "Basic information about your bank account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF003C84),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * .12,
                  right: MediaQuery.sizeOf(context).width * .12,
                  top: MediaQuery.sizeOf(context).height * .02,
                ),
                child: Text(
                  "Including balance sheet, expenses, major news",
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: .4,
                    color: const Color(0xFF000000).withOpacity(.26),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * .1),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .342,
              width: MediaQuery.sizeOf(context).width * .88,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height * .07,
                      left: MediaQuery.sizeOf(context).width * .04,
                      right: MediaQuery.sizeOf(context).width * .04,
                    ),
                    alignment: Alignment.center,
                    height: MediaQuery.sizeOf(context).height * .3,
                    width: MediaQuery.sizeOf(context).width * .88,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(13)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          color: Colors.black.withOpacity(.03),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          offset: const Offset(0, 0),
                          color: Colors.black.withOpacity(.03),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "I'm truly impressed with its features and user-friendliness",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF003C84),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image(
                          image: const AssetImage('assets/images/stars.png'),
                          width: MediaQuery.sizeOf(context).width * .25,
                        ),
                        Text(
                          "The app boasts an intuitively designed interface that makes it easy to find all the information I need quickly. I'm delighted to write a review about this banking app",
                          style: TextStyle(
                            fontSize: 11,
                            letterSpacing: .4,
                            color: const Color(0xFF000000).withOpacity(.26),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * .02,
                        ),
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage("assets/images/intro_2.png"),
                      width: 110,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * .077,),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * .12,
                right: MediaQuery.sizeOf(context).width * .12,
                top: MediaQuery.sizeOf(context).height * .05,
              ),
              child: const Text(
                "We value your feedback",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF003C84),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * .12,
                right: MediaQuery.sizeOf(context).width * .12,
                top: MediaQuery.sizeOf(context).height * .02,
              ),
              child: Text(
                "Every day we are getting better due to your ratings and reviews — that helps us protect your accounts.",
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: .4,
                  color: const Color(0xFF000000).withOpacity(.26),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )
      ],
    );
  }
}
