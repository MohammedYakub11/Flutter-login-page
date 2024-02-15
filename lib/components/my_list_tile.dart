import 'package:flutter/material.dart';
import 'package:project/components/navigation_item.dart';
import 'package:project/components/navigation_provider.dart';
import 'package:provider/provider.dart';

class MyListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  // final NavigationItem item;

  const MyListTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required bool selected,
    // required this.item,

  });

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<NavigationProvider>(context);
    // final currentItem = provider.navigationItem;
    // final isSelected = item == currentItem;

    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        // selected: isSelected,
        selectedTileColor: Colors.grey,
        leading: Icon(
          icon,
          color: Color(0xff4c505b),

        ),
        title: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        onTap: onTap,
        // onTap:()=> selectedItem (context, item),

      ),
    );
  }

//   void selectedItem(BuildContext context, NavigationItem item) {
//     final provider = Provider.of<NavigationProvider>(context);
//     provider.setNavigationItem(item);
//
//   }
}
