import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/bloc/persons/bloc_persons.dart';
import 'package:flutter_application_app_v2/constants/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bottom_NavigationBar.dart';
import "./homscreenWidgets/serchbar.dart";
import './homscreenWidgets/rik_gred.dart';
import './homscreenWidgets/listView.dart';

class PersonsListScreen extends StatelessWidget {
  const PersonsListScreen({super.key});

  static final isListView = ValueNotifier(true);

  get focusNode => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const MyBottomNavigation(
            //current:0
            ),
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
                var personsTotal = 0;
                if (state is StatePersonsData) {
                  personsTotal = state.data.length;
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                            "S.of(context).personsTotal(personsTotal).toUpperCase()"),
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
            Expanded(child: BlocBuilder<BlocPersons, StateBlocPersons>(
              builder: (context, state) {
                if (state is StatePersonsLoading) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(),
                    ],
                  );
                }
                if (state is StatePersonsError) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(state.error),
                      ),
                    ],
                  );
                }
                if (state is StatePersonsData) {
                  if (state.data.isEmpty) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                              "AppLocalization.of(context.personsListIsEmplty)"), //TODO
                        ),
                      ],
                    );
                  } else {
                    return ValueListenableBuilder<bool>(
                      valueListenable: isListView,
                      builder: ((context, isListViewMode, _) {
                        return isListViewMode
                            ? RikList(personsList: state.data)
                            : RikGrid(personsList: state.data); //TODO
                      }),
                    );
                  }
                }
                return const SizedBox.shrink();
              },
            ))
          ],
        ),
      ),
    );
  }
}
