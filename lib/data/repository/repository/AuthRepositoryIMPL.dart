import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:testing/Failers/Failers.dart';

import 'package:testing/domain/entites/RegisterRepositoryEntity.dart';
import 'package:testing/domain/repository/dataSource/Registerdatasource.dart';
import '../../../domain/repository/repository/repository.dart';
@Injectable(as: AuthRepository)
class AuthRepositoryIMPL implements AuthRepository{
  RemoteDataSource remoteDataSource;
  AuthRepositoryIMPL({required this.remoteDataSource});
  @override
  Future<Either<Failures, RegisterRepositoryEntity>>
  Regestier(String name, String email, String phone,
      String password, String repassword)async {

  var either= await remoteDataSource.Regestier(name, email, phone, password, repassword);

return either.fold((error)=>Left(error),(registerResponse)=>Right(registerResponse));
  }

}