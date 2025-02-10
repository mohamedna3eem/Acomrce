import 'package:testing/Failers/Failers.dart';
import 'package:testing/domain/entites/RegisterRepositoryEntity.dart';

abstract class RegisterStates{}
class initialState extends RegisterStates{}
 class LoadingState extends RegisterStates{}
class ErrorState extends RegisterStates{
  Failures errorMessage;
  ErrorState({required this.errorMessage });
}
class SuccessState extends RegisterStates{
  RegisterRepositoryEntity registerRepositoryEntity;
  SuccessState({required this.registerRepositoryEntity});

}