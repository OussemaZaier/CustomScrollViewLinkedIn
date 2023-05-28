import 'package:custom_scroll_view/classes/grid.dart';
import 'package:custom_scroll_view/classes/item.dart';

List<Grid> gridData = [
  Grid(gridName: 'grid item 1'),
  Grid(gridName: 'grid item 2'),
  Grid(gridName: 'grid item 3'),
  Grid(gridName: 'grid item 4'),
  Grid(gridName: 'grid item 5'),
  Grid(gridName: 'grid item 6'),
  Grid(gridName: 'grid item 7'),
];
List<Item> data = [
  Item(sectionName: 'Section 1', content: gridData),
  Item(sectionName: 'Section 2', content: gridData),
  Item(sectionName: 'Section 3', content: gridData),
  Item(sectionName: 'Section 4', content: gridData),
];
