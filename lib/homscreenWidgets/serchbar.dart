import 'package:flutter/material.dart';
import '/constants/app_styles.dart';

class SerchBar extends StatefulWidget {
  final FocusNode focusNode;

  SerchBar({Key? key, required this.focusNode}) : super(key: key);

  @override
  State<SerchBar> createState() => _SerchBarState();
}

class _SerchBarState extends State<SerchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focusNode,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          hintText: "Найти персонажа",
          hintStyle: AppStyles.searcS16w400,
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.filter_alt_outlined),
          border: InputBorder.none),
    );
  }
}
