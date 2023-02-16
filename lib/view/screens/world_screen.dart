import 'package:dark_souls/models/models.dart';
import 'package:dark_souls/view/status_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorldScreen extends StatelessWidget {
  const WorldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints bc) {
        final size = bc.biggest;
        return Stack(
          children: [
            const Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/background.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            //todo: StatusView
            Positioned(
              height: size.height * 0.15,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: StatusView(),
              ),
            ),
            //todo: EquipmentView
            Positioned(
              bottom: 0,
              height: size.height * 0.35,
              width: size.width * 0.20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black45,
                ),
              ),
            ),
            //todo: CountSoulsView
            Positioned(
              bottom: size.height * 0.01,
              right: size.width * 0.01,
              height: size.height * 0.11,
              width: size.width * 0.15,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.black45,
                ),
              ),
            ),
            Positioned(
              bottom: 250,
              left: 550,
              height: size.height * 0.35,
              width: size.width * 0.20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black45,
                  child: const TestChangeInBar(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class TestChangeInBar extends StatelessWidget {
  const TestChangeInBar({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    //VERY IMPORTANT
    final player = Provider.of<PlayerStatusManager>(context, listen: false);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: player.increaseHP,
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: player.damageHP,
          child: const Icon(Icons.remove),
        )
      ],
    );
  }
}
