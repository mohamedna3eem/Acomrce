import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import 'package:testing/Failers/Failers.dart';
import 'package:testing/apiManager/apiManager.dart';
import 'package:testing/apiManager/apiconestant/ApiConstant.dart';

import 'package:testing/domain/entites/RegisterRepositoryEntity.dart';

import '../../../apiManager/endPoint/endPoint.dart';
import '../../../domain/repository/dataSource/Registerdatasource.dart';
import '../../model/RegisterResponseDM.dart';
@Injectable(as:RemoteDataSource )
class RemoteDataSourceImpl implements RemoteDataSource{
  ApiManager apiManager;
  RemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<Failures, RegisterResponseDm>>
     Regestier(String name, String email, String phone,
      String password, String repassword)async {

    var response = await apiManager.postData(
        endPoint: EndPoint.signUp,
      body:{
        "name": name,
        "email":email,
        "password":password,
        "rePassword":repassword,
        "phone":phone
      },


    );
    // final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
    // if (connectivityResult.contains(ConnectivityResult.mobile) ||connectivityResult.contains(ConnectivityResult.wifi)){
     var registerResponses=RegisterResponseDm.fromJson(response.data);

     // "statusMsg": "fail",
     // "message": "Account Already Exists"
      if (response.statusCode! >= 200 ||
      response.statusCode! < 300){
        return Right(registerResponses);

     } else {
        return Left(ServerError(errorMessage: registerResponses.message!));
      }
       {

      }
  }
}
  // else {
  //     return Left(ServerError(errorMessage: "No Internet"));
  //   }

  // }

