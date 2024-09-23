import '../../domain/repositories/repositories.dart';
import '../sources/sources.dart';

class SecondRepositoryImp implements SecondRepository {
  final SecondRemoteDataSource remoteDataSource;

  SecondRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
