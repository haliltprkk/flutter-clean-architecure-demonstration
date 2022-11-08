import 'package:clean_architecture_demonstration/data/character_list/repository/character_list_repository_impl.dart';
import 'package:clean_architecture_demonstration/domain/character_detail/character_detail_repository.dart';
import 'package:injectable/injectable.dart';

import '../../data/character_detail/repository/character_detail_repository_impl.dart';
import '../../domain/character_list/character_list_repository.dart';

@module
abstract class RepositoryModule {
  @LazySingleton(as: CharacterListRepository)
  CharacterListRepositoryImpl get characterListRepository;

  @LazySingleton(as: CharacterDetailRepository)
  CharacterDetailRepositoryImpl get characterDetailRepository;
}
