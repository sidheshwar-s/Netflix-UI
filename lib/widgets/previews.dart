import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> previewItems;

  const Previews({Key key, this.title, this.previewItems}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 165,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: previewItems.length,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              itemBuilder: (_, int index) {
                final Content content = previewItems[index];
                return GestureDetector(
                  onTap: () {
                    print(content.name);
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(content.imageUrl),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          border: Border.all(color: content.color, width: 4),
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.black87,
                              Colors.black45,
                              Colors.transparent
                            ],
                            stops: [0, 0.4, 1],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(color: content.color, width: 4),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                          height: 60,
                          child: Image.asset(content.titleImageUrl),
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
