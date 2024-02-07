import 'package:ktest/repository/characters_repository.dart';
import 'package:ktest/character_screen/bloc/main_event.dart';
import 'package:ktest/character_screen/bloc/main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageBloc
    extends Bloc<MainPageEvent, MainPageState> {
  final CharactersRepository _charactersRepository;

  MainPageBloc(
    MainPageState initialState,
    this._charactersRepository,
  ) : super(initialState) {
    _handelEvent();
  }

  void _handelEvent() {
    on<GetDataOnMainPageEvent>(
      (event, emitter) => _getDataOnMainPageCasino(event, emitter),
    );
    on<DataLoadedOnMainPageEvent>(
      (event, emitter) => _dataLoadedOnMainPageCasino(event, emitter),
    );
    on<LoadingDataOnMainPageEvent>(
      (event, emitter) => emitter(LoadingMainPageState()),
    );
  }

  Future<void> _dataLoadedOnMainPageCasino(
    DataLoadedOnMainPageEvent event,
    Emitter<MainPageState> emit,
  ) async {
    if (event.characters != null) {
      emit(SuccessfulMainPageState(event.characters!));
    } else {
      emit(UnSuccessfulMainPageState());
    }
  }

  Future<void> _getDataOnMainPageCasino(
    GetDataOnMainPageEvent event,
    Emitter<MainPageState> emit,
  ) async {
    _charactersRepository.getCharacters(event.page).then(
      (value) {
        add(DataLoadedOnMainPageEvent(value));
      },
    );
  }
}
