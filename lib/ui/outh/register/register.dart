import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/CustemWidget/CustomValidaitor.dart';
import 'package:testing/Di/di.dart';
import 'package:testing/ui/outh/register/cubit/Register_view_model.dart';
import 'package:testing/ui/outh/register/cubit/register_states.dart';
import '../../../CustemWidget/CustemTextField.dart';
import '../../../CustemWidget/CustomButtom.dart';
import '../../../CustemWidget/DailogUtiles.dart';


class Register extends StatefulWidget {
  static const  String routename="register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
   RegisterViewModel registerViewModel=getIt<RegisterViewModel>();

  //
  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;


    return BlocListener<RegisterViewModel,RegisterStates>(
      bloc: registerViewModel,
      listener: (BuildContext context, state) {
        if (state is LoadingState){
          DialogUtiles.showLoading("Loading........",context);
          setState(() {

          });
        }else if(state is ErrorState){
         DialogUtiles.hideLoading(context);
         DialogUtiles.showMessage(state.errorMessage.errorMessage);
         setState(() {
         });
        }else if(state is SuccessState){
          DialogUtiles.hideLoading(context);
          DialogUtiles.showMessage("Register Successful");


        }else{

        }

      },
      child: Scaffold(
        backgroundColor: Color(0XFF004182),


        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:0.04*width,vertical: 0.02*height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(height: 0.2*height,"assets/images/RouteImage.png"),
                Text( " Full Name  ",style: TextStyle(color: Colors.white)),
                SizedBox(height: 0.02*height,),
                CustomTextfield(
                  controller: registerViewModel.nameController,
                  validator:(value)=>customValidator("name"),
                    texthintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal
                    ,
                    fontSize: 12
                    ),
                    hinttext: "Enter your First Name"),
                SizedBox(height: 0.02*height,),
                Text( " MobileNumber  ",style: TextStyle(color: Colors.white)), //name
                SizedBox(height: 0.02*height,),
                CustomTextfield(
                    controller: registerViewModel.phoneController,
                    validator:(value)=>customValidator("phone"),
                    texthintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,
                        fontSize: 13
                    ),
                    hinttext: "enter your mobile number."),
                SizedBox(height: 0.02*height,),
                Text( " E-mail address  ",style: TextStyle(color: Colors.white)),
                SizedBox(height: 0.02*height,),
                CustomTextfield(
                    controller: registerViewModel.emailController,
                    validator:(value)=>customValidator("email"),
                    texthintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal
                        ,
                        fontSize: 13
                    ),
                    hinttext: "enter your email address"),
                SizedBox(height: 0.02*height,),
                Text( " Password  ",style: TextStyle(color: Colors.white)),
                SizedBox(height: 0.02*height,),
      //name              SizedBox(height: 0.01*height,),
                CustomTextfield(

                    controller: registerViewModel.passwordController,
                    validator:(value)=>customValidator("password"),
                    texthintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal
                        ,
                        fontSize: 13
                    ),
                    hinttext: "enter your password"), //name
                SizedBox(height: 0.04*height,),
            CustomButton(
                  onButtonClicked: (){
                    registerViewModel.Register();
                  },
              buttonColor: Colors.white,
               textStyle: TextStyle(color: Color(0XFF004182)),
                  text: "Sign Up",

                ),
                SizedBox(height: 0.03*height,),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, Register.routename);
                  },
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: "Already Have Account ?  ",style: TextStyle(color: Colors.white)),
                          TextSpan(text: "Login",style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              fontSize: 16,
                              color:Colors.white,
                              decoration:TextDecoration.underline,
                              decorationColor:Colors.white,

                          ))

                        ]
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
