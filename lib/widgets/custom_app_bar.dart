import 'package:flutter/material.dart';

import 'package:flutter_netflix_responsive_ui/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    Key key,
    this.scrollOffset = 0.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 12.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButtons(
                    onTap: () => print("Tv Shows"),
                    title: "Tv Shows",
                  ),
                  _AppBarButtons(
                    onTap: () => print("Movies"),
                    title: "Movies",
                  ),
                  _AppBarButtons(
                    onTap: () => print("My List"),
                    title: "My List",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButtons extends StatelessWidget {
  final Function onTap;
  final String title;
  const _AppBarButtons({
    @required this.onTap,
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
