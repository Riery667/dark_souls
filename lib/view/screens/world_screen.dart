import 'package:dark_souls/models/models.dart';
import 'package:dark_souls/view/equipament_view.dart';
import 'package:dark_souls/view/menu_view.dart';
import 'package:dark_souls/view/souls_view.dart';
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
                      image: AssetImage("assets/main_screen/background.jpg"),
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
              left: 50,
              bottom: 10,
              height: size.height * 0.38,
              width: size.width * 0.23,
              child: const EquipamentView(),
            ),
            //todo: CountSoulsView
            Positioned(
              bottom: size.height * 0.04,
              right: size.width * 0.03,
              child: const SoulsView(),
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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: player.increaseHP,
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: player.damageHP,
              child: const Icon(Icons.remove),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: player.soulsAcquired,
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
            FloatingActionButton(
              onPressed: player.diePunishment,
              child: const Icon(
                Icons.remove,
                color: Colors.black,
              ),
            ),
          ],
        ),
        FloatingActionButton(
          onPressed: () {
            showGeneralDialog(
              barrierDismissible: true,
              barrierLabel: 'menu',
              context: context,
              pageBuilder: (context, animation, secondaryAnimation) {
                return const Center(
                  child: SizedBox(
                    width: 290,
                    height: 110,
                    child: MenuView(),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
