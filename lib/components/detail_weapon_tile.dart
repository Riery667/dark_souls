// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:dark_souls/models/models.dart';

class DetailWeaponTile extends StatelessWidget {
  Weapon weapon;
  DetailWeaponTile({
    Key? key,
    required this.weapon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
