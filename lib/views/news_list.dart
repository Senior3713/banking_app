import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  final PageController controller;
  const NewsList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(
        height: MediaQuery.sizeOf(context).height * .035,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            controller.animateToPage(
              4,
              duration: Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          },
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et."
                          .toUpperCase(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * .01,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFBDBDBD)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.sizeOf(context).width * .05),
              Image(
                image: const AssetImage("assets/images/bank.png"),
                width: MediaQuery.sizeOf(context).width * .28,
                height: MediaQuery.sizeOf(context).height * .11,
              ),
            ],
          ),
        );
      },
    );
  }
}



class NewsListNoOnPressed extends StatelessWidget {
  const NewsListNoOnPressed({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(
        height: MediaQuery.sizeOf(context).height * .035,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et."
                        .toUpperCase(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .01,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFBDBDBD)),
                  ),
                ],
              ),
            ),
            SizedBox(width: MediaQuery.sizeOf(context).width * .05),
            Image(
              image: const AssetImage("assets/images/bank.png"),
              width: MediaQuery.sizeOf(context).width * .28,
              height: MediaQuery.sizeOf(context).height * .11,
            ),
          ],
        );
      },
    );
  }
}
