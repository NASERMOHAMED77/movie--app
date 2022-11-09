// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'package:moviapp/model/singin.dart';
import 'package:moviapp/view/companat/popular_movie_listwidget.dart';
import 'package:moviapp/viewmodel/homepage.dart';
import 'package:moviapp/viewmodel/screens/homepage.dart';
import 'package:moviapp/viewmodel/screens/searchpage.dart';

class LoginPageScreen extends StatefulWidget {
  LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();
  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return MyHomePage();
            } else {
              return MyHomePage();

              return LoginWidget(
                emailcontroller: emailcontroller,
                passwordcontroller: passwordcontroller,
              );
            }
          },
        ));
  }
}

class LoginWidget extends StatelessWidget {
  LoginWidget({
    Key? key,
    required this.emailcontroller,
    required this.passwordcontroller,
  }) : super(key: key);

  final TextEditingController emailcontroller;
  final TextEditingController passwordcontroller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Container(
          height: 200,
          child: Image.asset('images/x.png'),
        ),
        SizedBox(
          height: 50,
        ),
        DefultfieldLogin(
            conttroller: emailcontroller,
            labletext: 'Email',
            hinttext: 'Entet Your Email',
            icon: Icons.email,
            function: () {}),
        SizedBox(
          height: 50,
        ),
        DefultfieldLogin(
            conttroller: passwordcontroller,
            labletext: 'PassWord',
            hinttext: 'Entet Your PassWord',
            icon: Icons.remove_red_eye_outlined,
            function: () {}),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: [
              const Text(
                'Remeber your password ? ',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              InkWell(
                // ignore: sort_child_properties_last
                child: const Text(
                  'Click here',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                onTap: (() {}),
              )
            ],
          ),
        ),
        Consumer<SingInWithEmail>(
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  value.singin(emailcontroller, passwordcontroller);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 45,
                  // ignore: sort_child_properties_last
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: [
              const Text(
                'Don\'t have an account ? ',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              InkWell(
                // ignore: sort_child_properties_last
                child: const Text(
                  'Sing Up',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                onTap: (() {}),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
