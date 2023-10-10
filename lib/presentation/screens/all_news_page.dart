import 'package:flutter/material.dart';

class AllNewsPage extends StatelessWidget {
  final PageController controller;
  const AllNewsPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 55,
        leading: IconButton(
          onPressed: () {
            controller.animateToPage(
              2,
              duration: Duration(milliseconds: 100),
              curve: Curves.linear,
            );
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Color(0xFFBDBDBD),
            size: 40,
          ),
        ),
        toolbarHeight: MediaQuery.sizeOf(context).height * .08,
        title: const Text(
          "All News",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: MediaQuery.sizeOf(context).height * .25,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/bank.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Text(
                "22 Sept, 2023",
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xFFBDBDBD),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur adipiscing ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .05,
              ),
              Text(
                """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu.""",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFBDBDBD),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
