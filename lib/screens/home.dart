import 'package:custom_scroll_view/data/data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            ...buildSliverAppBars(),
          ],
        ),
      ),
    );
  }
}

List<Widget> buildSliverAppBars() {
  List<Widget> sliverAppBars = [];

  // Generate SliverAppBar widgets dynamically
  for (int sectionIndex = 0; sectionIndex < data.length; sectionIndex++) {
    sliverAppBars.add(
      SliverAppBar(
        pinned: true,
        title: Text('Section $sectionIndex'),
      ),
    );
    sliverAppBars.add(
      SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return ListTile(
              title: Text(data[sectionIndex].content[index].gridName),
            );
          },
          childCount:
              data[sectionIndex].content.length, // Number of items in Section 1
        ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100.0, // Maximum width of each grid item
          mainAxisSpacing: 10.0, // Spacing between items along the main axis
          crossAxisSpacing: 10.0, // Spacing between items along the cross axis
          childAspectRatio: 1.0, // Ratio of item width to item height
        ),
      ),
    );
    sliverAppBars.add(
      SliverFixedExtentList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return ListTile(
              title: Text(data[sectionIndex].content[index].gridName),
            );
          },
          childCount:
              data[sectionIndex].content.length, // Number of items in Section 1
        ),
        itemExtent: 50.0,
      ),
    );
  }

  return sliverAppBars;
}
