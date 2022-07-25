import 'package:flutter/material.dart';
import 'package:login/component/button.dart';
import 'package:login/component/textfield.dart';

class Login extends StatefulWidget {
  const Login({key}) : super(key: key);

  @override
  _LoginUserIDState createState() => _LoginUserIDState();
}

class _LoginUserIDState extends State<Login> {
  TextEditingController userIdController = TextEditingController();
  FocusNode userIdFocus = FocusNode();

  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocus = FocusNode();

  String userId = '';
  String password = '';

  void validateForm() {
      if (userId != '' && password != '')
    {
      Navigator.of(context).pushNamed("home");
    }
    else{
      if (userId == ''){
         showDialog(
        context: context, 
        builder: (BuildContext context) {
          return const Text('userID kosong!!');
        }
      );
      }
      else if (password == ''){
         showDialog(
        context: context, 
        builder: (BuildContext context) {
          return const Text('Password kosong!!');
        }
      );
      } 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Padding(padding: EdgeInsets.only(top: 30)),
                WideTextField(
                  inputType: TextInputType.text,
                  title: "User ID",
                  textEditingController: userIdController,
                  focusNode: userIdFocus,
                  onChanged: (value) {
                    userId = value;
                  },
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                WideTextField(
                  obscureText: true,
                  inputType: TextInputType.visiblePassword,
                  title: "Password",
                  textEditingController: passwordController,
                  focusNode: passwordFocus,
                  onChanged: (value) {
                    password = value;
                  },
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                WideButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    validateForm();
                  },
                  width: 200,
                  title: "Sign In",
                ),
          ]
        ),
      ),
    );
  }
}


