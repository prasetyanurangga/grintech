import 'package:flutter/material.dart';
import 'package:grintech/constant/dimens.dart';
import 'package:grintech/page_routes.dart';
import 'package:grintech/components/text_field_component.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grintech/blocs/login_bloc/login_bloc.dart';
import 'package:grintech/blocs/login_bloc/login_event.dart';
import 'package:grintech/blocs/login_bloc/login_state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailTextController = TextEditingController();
  var passwordTextController = TextEditingController();

  bool _isObscure = true;


  Widget _buildBody(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(Dimens.Level_3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome!",
              style: TextStyle(
                color: Colors.white,
                fontSize: Dimens.Level_3,
                fontWeight: FontWeight.w600
              )
            ),
            SizedBox(height: Dimens.Level_5),
            TextFieldComponent(
              label: "Email",
              typeField: 'text',
              controller: emailTextController
            ),
            SizedBox(height: Dimens.Level_2),
            TextFieldComponent(
              label: "Password",
              typeField: 'password',
              controller: passwordTextController
            ),
            SizedBox(height: Dimens.Level_2),
            ElevatedButton(      
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(Dimens.Level_1),
                ),
                minimumSize: const Size.fromHeight(Dimens.Level_6), // NEW
              ),
              onPressed: () {
                if(emailTextController.text != "" && passwordTextController.text != "") {
                  BlocProvider.of<LoginBloc>(context).add(
                    GetLogin(
                      email: emailTextController.text,
                      password: passwordTextController.text
                    )
                  );
                }
              },
              child: const Text('Login'),
            ),
            SizedBox(height: Dimens.Level_1),
            TextButton(
              child: Text('Forgot Password'),
              onPressed: () {}
            )
          ]
        )
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) async {
          if(state is LoginSuccess) {
            var token = state.data.token;
            Fluttertoast.showToast(
              msg: "Berhasil Login",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
            );
            SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setString('token', token);
            Navigator.of(context).pushNamedAndRemoveUntil(PageRoutes.linkMain, (Route<dynamic> route) => false);
          }


          if(state is LoginLoading){
            Fluttertoast.showToast(
              msg: "Loading",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
            );
          }
          if(state is LoginFailure){
            print(state.error);
            Fluttertoast.showToast(
              msg: "Gagal Login",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
            );
          }
        },
        child: _buildBody(),
      )

    );
  }
}
