import 'package:dartz/dartz.dart';
import 'package:testing/Failers/Failers.dart';
import 'package:testing/domain/entites/RegisterRepositoryEntity.dart';

abstract class RemoteDataSource{

 Future<Either<Failures ,RegisterRepositoryEntity>>Regestier(String name,String email,String phone,
      String password,String repassword,);
}