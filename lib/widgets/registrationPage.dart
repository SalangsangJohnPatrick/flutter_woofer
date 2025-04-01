import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:woofer_app/widgets/loginPage.dart';
import 'package:woofer_app/objects/user_info.dart';

//import 'package:flutter_application_1/theme/theme_helper.dart';


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  Color _primaryColor = Color.fromARGB(255, 255, 102, 0);
  Color _secondaryColor = Color.fromARGB(255, 204, 0, 255);
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pnumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void regCheck (){
    setState(() {
      
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));

    //   if (_formKey.currentState!.validate()) {
        
    // }
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
              margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Stack(children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(width: 5, color: Colors.white),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 20,
                                    offset: const Offset(5, 5),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.person,
                                color: Colors.grey,
                                size: 80.0,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                              child: Icon(
                                Icons.add_circle,
                                color: Colors.grey,
                                size: 25.0,
                              ),
                            )
                          ]),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            // controller: userInput,
                            // onChanged: (value) {
                            //   setState(() {
                            //     userInput.text = value.toString();
                            //   });
                            // },
                            decoration: InputDecoration(
                                labelText: "First Name",
                                hintText: "Enter your first name",
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 10, 20, 10),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(color: Colors.grey)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                                border: OutlineInputBorder()),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please enter your First Name";
                              }
                              return null;
                            },
                            controller: fnameController,
                            keyboardType: TextInputType.name,
                            onSaved: (value) {
                              fnameController.text = value!;
                            },
                            textInputAction: TextInputAction.done,
                          ),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 5),
                            )
                          ]),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: "Last Name",
                                hintText: "Enter your last name",
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 10, 20, 10),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(color: Colors.grey)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                                border: OutlineInputBorder()),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please enter your Last Name";
                              }
                              return null;
                            },
                            controller: lnameController,
                            keyboardType: TextInputType.name,
                            onSaved: (value) {
                              lnameController.text = value!;
                            },
                            textInputAction: TextInputAction.done,
                          ),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 5),
                            )
                          ]),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: "E-mail Address",
                                hintText: "Enter your email",
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 10, 20, 10),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(color: Colors.grey)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                                border: OutlineInputBorder()),
                            controller: emailController,
                            //keyboardType: TextInputType.emailAddress,
                            onSaved: (value) {
                              emailController.text = value!;
                            },
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.emailAddress,
                            validator: (val) {
                              if(val!.isEmpty)
                              {
                                return 'Please enter an Email';
                              }
                              if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(val)){
                                return 'Please enter a valid Email';
                              }
                              return null;
                            },
                          ),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 5),
                            )
                          ]),
                        ),                        
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: "Mobile Number",
                                hintText: "Enter your Mobile Number",
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 10, 20, 10),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(color: Colors.grey)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                                border: OutlineInputBorder()),
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if (!(val!.isEmpty) &&
                                  !RegExp(r"^(\d+)*$").hasMatch(val)) {
                                return "Enter a valid phone number";
                              }
                              return null;
                            },
                          ),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 5),
                            )
                          ]),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Password",
                                hintText: "Enter your password",
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 10, 20, 10),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(color: Colors.grey)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                                border: OutlineInputBorder()),
                            validator: (val) {
                              if ((val!.length) < 8) {
                                return "Please enter your password";
                              }
                              return null;
                            },
                          ),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 5),
                            )
                          ]),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(),
                        SizedBox(height: 20.0),
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
                              padding:
                                  const EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                "Register".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {
                              String firstName = fnameController.text;
                              String lastName = fnameController.text;
                              String email = emailController.text;
                              String password = passwordController.text;
                              String usernum = pnumberController.text;
                              AppUsers newuser = AppUsers(fname: firstName, lname: lastName, email: email, usernum: usernum, userpass: password);

                              listUser.addUser(newuser);
                              regCheck();
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 20, 10,
                              20), //child: "Dont have an account? Create tap link"
                          child: Text.rich(TextSpan(children: [
                            TextSpan(text: "Already have an account? "),
                            TextSpan(
                              text: 'Back to Log-in Page',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  //when text is tapped redirect to Registration Page
                                  Navigator.pop(context);
                                },
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 102, 0)),
                            )
                          ])),
                        )
                      ],
                    ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
