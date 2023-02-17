import 'package:dark_souls/view/bar_view.dart';
import 'package:dark_souls/view/pladge_view.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          PladgeView(),
          BarView(),
        ],
      ),
    );
  }
}
