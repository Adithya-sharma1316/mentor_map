import 'package:flutter/material.dart';

class CusPopUpMenu extends StatefulWidget {
  const CusPopUpMenu({super.key,
  this.right=20,
  this.top=10,
  this.iconSize=35,
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
                  padding: EdgeInsets.only(top:widget.top, right:widget.right),
                  child: PopupMenuButton(
                    icon:  Icon(widget.icon,size:widget.iconSize),
                    itemBuilder: (BuildContext context)=>[
                    const PopupMenuItem(child: Text('Profile') ),
                    const PopupMenuItem(child: Text('Settings') ),
                    const PopupMenuItem(child: Text('Logout') ),
                  ],
                ),
                );
  }
}