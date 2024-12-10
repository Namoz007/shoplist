import '../../sources.dart';

class ShowListsForCategory extends StatefulWidget {
  listsCategory category;
  List<ListEntities> lists;
  ShowListsForCategory({
    super.key,
    required this.category,
    required this.lists,
  });

  @override
  State<ShowListsForCategory> createState() => _ShowListsForCategoryState();
}

class _ShowListsForCategoryState extends State<ShowListsForCategory> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.lists.length,
      itemBuilder: (context, index) {
        return ShowList(list: widget.lists[index], category: widget.category);
      },
    );
  }
}
