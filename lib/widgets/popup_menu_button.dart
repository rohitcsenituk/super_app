import 'package:flutter/material.dart';
import 'package:super_app/models/todo_menu_item.dart';

class PopupMenuButtonWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const PopupMenuButtonWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<TodoMenuItem>(
          icon: Icon(Icons.view_list),
          onSelected: ((valueSelected) {
            debugPrint('valueSelected :${valueSelected.title}.');
          }),
          itemBuilder: (BuildContext context) {
            TodoMenuItem _todoMenuItem = TodoMenuItem();
            _todoMenuItem.foodMenuList.addAll([
              TodoMenuItem(title: 'Fast Food', icon: Icon(Icons.fastfood)),
              TodoMenuItem(title: 'Fruits', icon: Icon(Icons.shopping_basket)),
              TodoMenuItem(title: 'Movies', icon: Icon(Icons.movie)),
              TodoMenuItem(title: 'Party', icon: Icon(Icons.party_mode)),
            ]);
            return _todoMenuItem.foodMenuList.map((TodoMenuItem todoMenuItem) {
              return PopupMenuItem<TodoMenuItem>(
                value: todoMenuItem,
                child: Row(
                  children: <Widget>[
                    Icon(todoMenuItem.icon.icon),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Text(todoMenuItem.title)
                  ],
                ),
              );
            }).toList();
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75.0);
}
