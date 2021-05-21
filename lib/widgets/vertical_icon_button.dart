import 'package:flutter/material.dart';

class VerticalIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const VerticalIconButton({Key key, this.icon, this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
