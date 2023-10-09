import 'package:flutter/material.dart';
import '/constants/app_styles.dart';

class SearchField extends StatelessWidget {
  final FocusNode focusNode;

  const SearchField({Key? key, this.onChanged, required this.focusNode})
      : super(key: key);
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      focusNode: focusNode,
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
