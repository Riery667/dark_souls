import 'package:dark_souls/components/detail_item_tile.dart';
import 'package:dark_souls/models/models.dart';
import 'package:flutter/material.dart';

class InventoryDetailsView extends StatelessWidget {
  final InventoryItem? item;
  const InventoryDetailsView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final Widget child;
    switch (item.runtimeType) {
      case Consumable:
        child = ConsumableDetailItem(item: item);
        break;
      case Weapon:
        child = WeaponDetailItem(item: item);
        break;
      case Shield:
        child = ShieldDetailItem(item: item);
        break;
      case Speel:
        child = SpeelDetailItem(item: item);
        break;
      default:
        child = Container(
          color: Colors.black,
        );
        break;
    }
    return child;
  }
}

class ConsumableDetailItem extends StatelessWidget {
  final InventoryItem? item;
  const ConsumableDetailItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return DetailItemTile(image: item!.image);
  }
}

class WeaponDetailItem extends StatelessWidget {
  final InventoryItem? item;
  const WeaponDetailItem({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ShieldDetailItem extends StatelessWidget {
  final InventoryItem? item;
  const ShieldDetailItem({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SpeelDetailItem extends StatelessWidget {
  final InventoryItem? item;
  const SpeelDetailItem({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
