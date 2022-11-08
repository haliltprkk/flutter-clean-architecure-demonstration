import 'package:clean_architecture_demonstration/presentation/character_detail/character_detail_bloc.dart';
import 'package:clean_architecture_demonstration/presentation/character_list/character_list_bloc.dart';
import 'package:injectable/injectable.dart';

@module
abstract class BlocModule {
  @injectable
  CharacterListBloc get characterListBloc;

  @injectable
  CharacterDetailBloc get characterDetailBloc;
}
