import '../../domain/repositories/repositories.dart';
import '../sources/sources.dart';

class HomeRepositoryImp implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
