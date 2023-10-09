import 'package:flutter/material.dart';

import './constants/app_styles.dart';
import './homscreenWidgets/listView.dart';
import './homscreenWidgets/rik_gred.dart';
import './homscreenWidgets/serchbar.dart';
import 'homscreenWidgets/characters_data.dart';
//import '/ui/vmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FocusNode focusNode = FocusNode();
  int? characterNumber = characters.length;

  bool isGridView = false;

  void toggleView() {
    setState(() {
      isGridView = !isGridView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          if (focusNode.hasFocus) {
            focusNode.unfocus();
          }
        },
        child: Container(
          color: const Color(0xffF2F2F2),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(
                  height: 54,
                ),
                //Search Bar

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SearchField(focusNode: focusNode),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 20.0),
                      child: Text(
                        'Bсего персонажей: ${characterNumber ?? "N/A"}',
                        style: AppStyles.detailS12w400,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: IconButton(
                          onPressed: toggleView,
                          icon: Icon(
                            isGridView
                                ? Icons.view_list_rounded
                                : Icons.grid_view,
                            size: 24,
                          )),
                    ),
                  ],
                ),
                isGridView
                    //list widget
                    ? const Expanded(child: RikList())
                    : const Expanded(child: RikGrid()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
