import 'package:woofer_app/widgets/userProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:woofer_app/objects/user_info.dart';
import 'package:woofer_app/widgets/registrationPage.dart';

//import 'package:flutter_application_1/theme/theme_helper.dart';


class LoginPage extends StatefulWidget {
  // const LoginPage({
  //   Key? key,
  // }) : super(key: key);

  
  // LoginPage({required this.info});
  const LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Color _primaryColor = Color.fromARGB(255, 255, 102, 0);
  Color _secondaryColor = Color.fromARGB(255, 204, 0, 255);

  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool passToggle = true;
  final List<AppUsers> info = UserInfo2;

  final _formKey= GlobalKey<FormState>();

  // void _loginCheck() {
  //   form_Key.currentState.save();
  //   if (widget.info.contains(emailController.text)) {
  //     Navigation.pushReplacementNamed(context);
  //     else { ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Invalid email address')),
  //     );
  //   }
  // }

  void loginCheck() {
    setState(() {
      String _email = emailController.text;
      String _passw = passController.text;

      if (listUser.getUsermail.contains(_email)) {
        if (listUser.getUserPass.contains(_passw)) {
          int index = getIndexFromEmail(_email);
          setCurrentUser(index);
          Navigator.push(context, MaterialPageRoute(builder: ((context) => user_Page(info[index]))));
        } else {
          
        }
      } else {
        
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
          color: Colors.white,
          child: Column(
            children: [
              // Image(image: AssetImage('images/dogpic.png')),
              Icon(
                Icons.pets,
                size: 200.0,
              ),
              SafeArea(
                  child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(children: [
                  Text(
                    "woofer",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Form(
                    key: _formKey,
                      child: Column(
                    children: [
                      Container(
                          child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            labelText: "Email Address",
                            hintText: "Enter your Email Address",
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(Icons.account_circle),
                            ),
                            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide: BorderSide(color: Colors.grey)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.0)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.0)),
                            border: OutlineInputBorder()),
                        validator: (val) {
                          final email = val ?? '';
                          String _email = emailController.text;
                          if (!email.contains('@') || listUser.getUsermail.contains(_email) == false) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      )),
                      SizedBox(height: 30.0),
                      Container(
                          child: TextFormField(
                        controller: passController,
                        obscureText: passToggle,
                        decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter your password",
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(Icons.lock),
                            ),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(passToggle
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide: BorderSide(color: Colors.grey)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.0)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.0)),
                            border: OutlineInputBorder()),
                        validator: (val) {
                          final password = val ?? '';
                          String _pass = passController.text;
                          if (password.isEmpty) {
                            return 'Please enter your password';
                          } else if (!listUser.getUserPass.contains(_pass)){
                            return 'Invalid Password';
                          }
                          return null;
                        },
                      )),
                      SizedBox(height: 15.0),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 4),
                                blurRadius: 5.0)
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1.0],
                            colors: [
                              _primaryColor,
                              _secondaryColor,
                            ],
                          ),
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            minimumSize:
                                MaterialStateProperty.all(Size(50, 50)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                            child: Text(
                              'Sign In'.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()){
                              loginCheck();
                            }
                            
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 20, 10,
                            20), //child: "Dont have an account? Create tap link"
                        child: Text.rich(TextSpan(children: [
                          TextSpan(text: "Don't have an account? "),
                          TextSpan(
                            text: 'Create',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                //when text is tapped redirect to Registration Page
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationPage()));
                              },
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 102, 0)),
                          )
                        ])),
                      )
                    ],
                  ))
                ]),
              ))
            ],
          )),
    );
  }
}