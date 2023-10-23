import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/bloc/location/bloc_location.dart';
import 'package:flutter_application_app_v2/bloc/location/states.dart';
import 'package:flutter_application_app_v2/locationScreenWidgets/listViewLocations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'bottom_NavigationBar.dart';
import "./homscreenWidgets/serchbar.dart";

class LocationsListScreen extends StatelessWidget {
  const LocationsListScreen({super.key});

  //static final isListView = ValueNotifier(true);

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
                BlocProvider.of<BlocLocations>(context).add(
                  EventLocationsFilterByName(value),
                );
              },
            ),
            BlocBuilder<BlocLocations, StateBlocLocations>(
              builder: (context, state) {
                if (state is StateLocationsData) {}
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text("locationsList"),
                );
              },
            ),
            Expanded(
              child: BlocBuilder<BlocLocations, StateBlocLocations>(
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
                              child: Text("S.of(context.LocationsListIsEmpty)"),
                            ),
                          ],
                        );
                      } else {
                        return LocationListViewWidget(locationsList: data);
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
