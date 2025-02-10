import 'package:dartz/dartz.dart';

import '../../../Failers/Failers.dart';
import '../../entites/RegisterRepositoryEntity.dart';

abstract class AuthRepository{

  Future<Either<Failures ,RegisterRepositoryEntity>>Regestier(String name,String email,String phone,
      String password,String repassword,);
}