import 'package:flutter/widgets.dart';

class StatusBar extends StatelessWidget {
  final String asset;
  final double maxStatusBar;
  final double currentStatusBar;

  const StatusBar(
      {super.key,
      required this.asset,
      required this.maxStatusBar,
      required this.currentStatusBar});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 18,
          width: maxStatusBar * 3,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/status/empty_bar.png',
                ),
                fit: BoxFit.fill),
          ),
        ),
        Positioned(
          bottom: 2,
          child: Container(
            height: 14,
            width: currentStatusBar * 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    asset,
                  ),
                  fit: BoxFit.fill),
            ),
          ),
        ),
      ],
    );
  }
}
