import 'package:chatapp/components/boxtile.dart';
import 'package:chatapp/components/mybutton.dart';
import 'package:chatapp/components/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void Login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        //background design
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 150),

                //welcome message
                Text(
                  'WELCOME BACK!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),

                //input field

                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 230,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 220,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 210,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const SizedBox(height: 50),
                          MyTextField(
                            controller: usernamecontroller,
                            hinttext: 'Username',
                            obscuretext: false,
                          ),
                          const SizedBox(height: 10),
                          MyTextField(
                            controller: passwordcontroller,
                            hinttext: 'Password',
                            obscuretext: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                //login button
                MyButton(
                    buttontext: 'LOG IN',
                    onTap: () {
                      Navigator.pushNamed(context, '/homepage');
                    }),

                const SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.4,
                        color: Colors.white,
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11.0),
                        child: Text(
                          'or Continue with',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.4,
                        color: Colors.white,
                      )),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                //google signin
                BoxTile(
                  image_path: 'lib/images/Google.png',
                ),

                const SizedBox(height: 50),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a user?',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/signuppage');
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
