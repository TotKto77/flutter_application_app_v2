import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/bloc/persons/bloc_persons.dart';
import 'package:flutter_application_app_v2/bloc/persons/states.dart';
import 'package:flutter_application_app_v2/constants/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'bottom_NavigationBar.dart';
import "./homscreenWidgets/serchbar.dart";
import './homscreenWidgets/rik_gred.dart';
import './homscreenWidgets/listView.dart';

class PersonsListScreen extends StatelessWidget {
  const PersonsListScreen({super.key});

  static final isListView = ValueNotifier(true);

  get focusNode => FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SearchField(
              focusNode: focusNode, //TODO wtf???
              onChanged: (value) {
                BlocProvider.of<BlocPersons>(context).add(
                  EventPersonsFilterByName(value),
                );
              },
            ),
            BlocBuilder<BlocPersons, StateBlocPersons>(
              builder: (context, state) {
                if (state is StatePersonsData) {}
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text("personsList.length"),
                      ),
                      IconButton(
                        onPressed: () {
                          isListView.value = !isListView.value;
                        },
                        icon: const Icon(Icons.grid_view),
                        iconSize: 28.0,
                        color: AppColors.neutral2,
                      ),
                    ],
                  ),
                );
              },
            ),
            Expanded(
              child: BlocBuilder<BlocPersons, StateBlocPersons>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    loding: () => const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                      ],
                    ),
                    data: (data) {
                      if (data.isEmpty) {
                        return const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text("S.of(context.personsListIsEmpty)"),
                            ),
                          ],
                        );
                      } else {
                        return ValueListenableBuilder<bool>(
                          valueListenable: isListView,
                          builder: (context, isListViewModel, _) {
                            return isListViewModel
                                ? RikList(personsList: data)
                                : RikGrid(personsList: data);
                          },
                        );
                      }
                    },
                    error: (state) {
                      return const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text("state.error"),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
