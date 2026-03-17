import 'package:flutter/material.dart';

class AppMenuItem extends StatelessWidget {
  final String title;
  final String? route;
  final IconData? icon;
  final List<AppMenuItem>? subMenu;
  const AppMenuItem({
    super.key,
    required this.title,
    this.route,
    this.icon,
    this.subMenu,
  });

  @override
  Widget build(BuildContext context) {
    if (subMenu != null && subMenu!.isNotEmpty) {
      return ExpansionTile(
        title: Text(title),
        leading: icon != null ? Icon(icon) : null,
        children: subMenu!.map((item) => item).toList(),
      );
    }

    return ListTile(
      title: Text(title),
      leading: icon != null ? Icon(icon) : null,
      onTap: route != null ? () => Navigator.pushNamed(context, route!) : null,
    );
  }
}
