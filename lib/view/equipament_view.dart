import 'package:flutter/material.dart';

class EquipamentView extends StatelessWidget {
  const EquipamentView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints bc) {
        final size = bc.biggest;
        return Material(
          color: Colors.transparent,
          child: Stack(
            children: [
              Row(
                children: [
                  //todo: leftHandView
                  Container(
                    height: 100,
                    width: 80,
                    color: Colors.black54,
                    child: Stack(
                      children: [
                        Positioned(
                          height: 32,
                          bottom: 4,
                          child: Image.asset(
                            'assets/main_screen/dish.png',
                          ),
                        ),
                        Positioned(
                          height: 110,
                          right: -20,
                          bottom: 0,
                          child: Image.asset(
                            'assets/main_screen/MENU_Knowledge_02047.PNG',
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14.0, 0, 14.0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //todo: skillView
                        const Text(
                          'Assustar',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 80,
                          color: Colors.black54,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                bottom: 4,
                                child: Image.asset(
                                  'assets/main_screen/dish.png',
                                ),
                              ),
                              Positioned(
                                height: 110,
                                right: -20,
                                bottom: 0,
                                child: Image.asset(
                                  'assets/main_screen/MENU_Knowledge_04018.PNG',
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //todo: consumableView
                        Container(
                          height: 100,
                          width: 80,
                          color: Colors.black54,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                bottom: 4,
                                child: Image.asset(
                                  'assets/main_screen/dish.png',
                                ),
                              ),
                              Positioned(
                                height: 110,
                                right: -20,
                                bottom: 0,
                                child: Image.asset(
                                  'assets/main_screen/MENU_Knowledge_00007.PNG',
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //todo: rightHandView
                      Container(
                        height: 100,
                        width: 80,
                        color: Colors.black54,
                        child: Stack(
                          children: [
                            Positioned(
                              height: 32,
                              bottom: 4,
                              child: Image.asset(
                                'assets/main_screen/dish.png',
                              ),
                            ),
                            Positioned(
                              height: 110,
                              right: -20,
                              bottom: 0,
                              child: Image.asset(
                                'assets/main_screen/MENU_Knowledge_01028.PNG',
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: 10,
                left: size.width * 0.32,
                child: const Text(
                  'Frasco de Estus das Cinzas',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Positioned(
                bottom: size.height * 0.15,
                left: size.width * 0.60,
                child: Container(
                  height: 30,
                  width: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
