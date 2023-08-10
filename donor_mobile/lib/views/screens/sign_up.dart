// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:donor_mobile/views/screens/sign_in.dart';
import 'package:donor_mobile/views/widgets/new_material_button.dart';
import 'package:donor_mobile/views/widgets/text_form_fields.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email, password, name;

  bool _passwordvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xffEFF1F5),
                  Color(0xFFFFFFFF),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/vector.png'),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Color.fromRGBO(47, 47, 47, 1),
                            fontSize: 32,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      FluxTextField(
                        title: 'Name',
                        hintText: 'Username',
                        icon: Icon(
                          Icons.abc,
                          color: Colors.transparent,
                        ),
                        onChanged: (String value) {
                          name = name;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Field is required";
                          }
                          return null;
                        },
                        keyBoard: null,
                        obscure: false,
                        iconTap: () {},
                        textCapital: TextCapitalization.none,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      FluxTextField(
                        title: 'E-mail',
                        hintText: 'Your email or phone',
                        icon: Icon(
                          Icons.abc,
                          color: Colors.transparent,
                        ),
                        onChanged: (String value) {
                          email = email;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Field is required";
                          }
                          return null;
                        },
                        keyBoard: null,
                        obscure: false,
                        iconTap: () {},
                        textCapital: TextCapitalization.none,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      FluxTextField(
                        title: 'Password',
                        hintText: 'Password',
                        icon: Icon((_passwordvisible == true)
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined),
                        onChanged: (String value) {
                          password = password;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Field is required";
                          }
                          return null;
                        },
                        keyBoard: null,
                        obscure: _passwordvisible ? true : false,
                        iconTap: () {
                          setState(
                            () {
                              _passwordvisible = !_passwordvisible;
                            },
                          );
                        },
                        textCapital: TextCapitalization.none,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      PrimaryButton(
                        onTap: () {
                          if (_formKey.currentState != null &&
                              _formKey.currentState!.validate()) {}
                        },
                        label: 'Sign in',
                        showIcon: true,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AAlready have an account?',
                            style: TextStyle(
                                color: Color.fromRGBO(31, 49, 74, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => SignInScreen()),
                                ),
                              );
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Color.fromRGBO(31, 49, 74, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
