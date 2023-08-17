import 'package:flutter/material.dart';

class HeaderAll extends StatelessWidget implements PreferredSizeWidget {
  HeaderAll({super.key, required this.appBar});

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 5),
        child: Image.asset(
          "img/genral/logo.png",
          width: 100,
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.menu_outlined)),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: InkWell(
            onTap: () {
              print("image clicked");
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage("img/form/download.jpeg"),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
