import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;

  const MyButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff4c505b),
                borderRadius: BorderRadius.circular(50),

        ),
        padding: const EdgeInsets.all(5),

        child: child,
      ),
    );
}
}
