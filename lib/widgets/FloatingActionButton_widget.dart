import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback? action;

  const FloatingActionButtonWidget({
    required this.icon,
    this.action,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: FloatingActionButton(
        onPressed: action,
        child: Icon(icon),
        elevation: 0,
      ),
    );
  }
}
