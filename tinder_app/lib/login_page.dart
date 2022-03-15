import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(height: 10),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Column(
                  children: [
                    Text(
                      'Location Changer',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Plugin app for Tinder',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    SizedBox(height: 40),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Stack(children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 12, bottom: 12),
                            primary: Colors.red,
                            textStyle: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {},
                          child: Text('Login with Facebook'),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFFF50057),
                  Color(0xFFFF7043),
                ],
              ),
            ),
          ),
          _body(),
        ],
      ),
    );
  }
}
