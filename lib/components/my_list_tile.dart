import 'package:flutter/material.dart';
import 'package:project/components/navigation_item.dart';
import 'package:project/components/navigation_provider.dart';
import 'package:provider/provider.dart';

class MyListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  final bool selected;
  final NavigationItem item;

  const MyListTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.selected,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
          selectedTileColor: Colors.grey,
          leading: Icon(
            icon,
            color: selected ? Colors.blue : Colors.black,
          ),
          title: Text(text,
              style: TextStyle(
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                color: selected ? Colors.blue : Colors.black,
              )),
          onTap: () {
            onTap?.call();
            if (!selected) {
              provider.setNavigationItem(item);
            }
          }
          // onTap:()=> selectedItem (context, item),

          ),
    );
  }

  // void selectedItem(BuildContext context, NavigationItem item) {
  //   final provider = Provider.of<NavigationProvider>(context);
  //   provider.setNavigationItem(item);
  //
  // }
}
