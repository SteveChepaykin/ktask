import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktest/character_screen/bloc/main_bloc.dart';
import 'package:ktest/character_screen/widgets/loading_widget.dart';
import 'package:ktest/character_screen/widgets/successful_widget.dart';
import 'package:ktest/repository/characters_repository.dart';
import 'package:ktest/character_screen/bloc/main_event.dart';
import 'package:ktest/character_screen/bloc/main_state.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

@immutable
class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => MainPageBloc(
          InitialMainPageState(),
          GetIt.I.get<CharactersRepository>(),
        )..add(const GetDataOnMainPageEvent(0)),
        child: BlocConsumer<MainPageBloc, MainPageState>(
          listener: (context, state) {},
          builder: (blocContext, state) {
            if (state is LoadingMainPageState) {
              return const LoadingWidget();
            } else if (state is SuccessfulMainPageState) {
              return SuccessfulWidget(characters: state.characters);
            } else {
              return const Center(child: Text("error"));
            }
          },
        ),
      ),
    );
  }
}
