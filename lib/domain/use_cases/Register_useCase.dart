import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../Failers/Failers.dart';
import '../entites/RegisterRepositoryEntity.dart';
import '../repository/repository/repository.dart';
@injectable
class RegisterUseCase{
  AuthRepository authRepository;
  RegisterUseCase({required this.authRepository});

  Future<Either<Failures, RegisterRepositoryEntity>> invoke(String name,String email,String phone,
      String password,String repassword){

   return authRepository.Regestier(name, email, phone, password, repassword);


  }

}