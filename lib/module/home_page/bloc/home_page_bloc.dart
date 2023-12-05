import 'package:aqarek_home/model/home_page_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../data/repository.dart';
part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc
    extends Bloc<HomePageEvent, HomePageState> {
  final Repository repository =
      Repository();
  HomePageModel? homePageModel ;
  HomePageBloc() : super(HomePageInitial()) {
    on<LoadHomePageEvent>((event, emit) async {
      emit(LoadingHomePageState());
      homePageModel =
          await repository.getData();
      emit(LoadedHomePageState());
    });
  }
}

