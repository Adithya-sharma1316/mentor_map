import 'package:flutter/material.dart';

class CusPopUpMenu extends StatefulWidget {
  const CusPopUpMenu(
      {super.key,
      this.right = 20,
      this.top = 10,
      this.iconSize = 35,
      required this.icon});
  final IconData? icon;
  final double top;
  final double right;
  final double iconSize;

  @override
  State<CusPopUpMenu> createState() => _CusPopUpMenuState();
}

class _CusPopUpMenuState extends State<CusPopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.top, right: widget.right),
      child: PopupMenuButton(
        constraints: const BoxConstraints(minWidth: 130),
        icon: Icon(widget.icon, size: widget.iconSize),
        itemBuilder: (BuildContext context) => [
          const PopupMenuItem(
              child: ListTile(
            title: Text('Profile', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.person_rounded),
          )),
          const PopupMenuItem(
              child: ListTile(
            title: Text('Settings', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.settings_rounded),
          )),
          const PopupMenuItem(
              child: ListTile(
            title: Text('Logout', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.exit_to_app_rounded),
          )),
        ],
      ),
    );
  }
}
