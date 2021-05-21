import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';

class ContentView extends StatelessWidget {
  final String title;
  final bool isOriginals;
  final List<Content> contentList;

  const ContentView(
      {Key key, this.title, this.isOriginals = false, this.contentList})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: isOriginals ? 550 : 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: contentList.length,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              itemBuilder: (BuildContext context, int index) {
                final Content content = contentList[index];
                return GestureDetector(
                  onTap: () => print(content.name),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: isOriginals ? 400 : 200,
                    width: isOriginals ? 200 : 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(content.imageUrl),
                          fit: BoxFit.cover),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
