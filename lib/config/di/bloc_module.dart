import 'package:clean_architecture_demonstration/presentation/character_list/character_list_bloc.dart';
import 'package:injectable/injectable.dart';

@module
abstract class BlocModule {
  @injectable
  CharacterListBloc get characterListBloc;
}
