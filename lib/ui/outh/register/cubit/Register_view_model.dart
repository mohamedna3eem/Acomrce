import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testing/domain/use_cases/Register_useCase.dart';
import 'package:testing/ui/outh/register/cubit/register_states.dart';
@injectable
class RegisterViewModel extends Cubit<RegisterStates>{
 RegisterUseCase registerUseCase;
  RegisterViewModel({required this.registerUseCase}):super(initialState());

 TextEditingController nameController = TextEditingController(text: "mo");
 TextEditingController phoneController = TextEditingController(text: "01134294523");
 TextEditingController emailController = TextEditingController(text: "mosalah@gmail.com");
 TextEditingController passwordController = TextEditingController(text: "fgfdgkejfirjfior");
 TextEditingController repasswordController = TextEditingController(text: "fgfdgkejfirjfior");
 var formkey=GlobalKey<FormState>();

 Register()async{
   emit(LoadingState());
   var either= await registerUseCase.invoke(
       nameController.text , emailController.text, phoneController.text,
    passwordController.text, repasswordController.text);

     either.fold((error){
       emit(ErrorState(errorMessage: error));
     }, (response){
       emit(SuccessState(registerRepositoryEntity: response));
     });

  }

}