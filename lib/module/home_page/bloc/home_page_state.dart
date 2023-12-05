part of 'home_page_bloc.dart';

@immutable
abstract class HomePageState {}

class HomePageInitial extends HomePageState {}

class LoadingHomePageState extends HomePageState {}

class LoadedHomePageState extends HomePageState {}
