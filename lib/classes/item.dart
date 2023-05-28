import 'package:custom_scroll_view/classes/grid.dart';

class Item {
  Item({
    required this.sectionName,
    required this.content,
  });

  String sectionName;
  List<Grid> content;
}
