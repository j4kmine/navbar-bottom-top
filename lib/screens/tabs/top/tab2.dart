import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Tab2 extends StatelessWidget {
  PageController _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _pageController,
          children: [_page("Page 1", Colors.blue), _page("Page 2", Colors.red)],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 2,
                  effect: WormEffect(),
                  onDotClicked: (index) => _pageController.animateToPage(index,
                      duration: Duration(microseconds: 500), curve: Curves.bounceOut),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }

  Widget _page(String s, Color color) {
    return Container(color: color, child: Center(child: Text(s)));
  }
}
