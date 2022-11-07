import 'package:clean_architecture_demonstration/data/character_list/repository/character_list_repository_impl.dart';
import 'package:injectable/injectable.dart';

import '../../domain/character_list/character_list_repository.dart';

@module
abstract class RepositoryModule {
  @LazySingleton(as: CharacterListRepository)
  CharacterListRepositoryImpl get characterListRepository;
}
