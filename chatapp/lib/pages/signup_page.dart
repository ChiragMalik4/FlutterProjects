import 'package:chatapp/components/boxtile.dart';
import 'package:chatapp/components/mybutton.dart';
import 'package:chatapp/components/textfield.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final namecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();

  void Signup() {}

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
                  'WELCOME!',
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
                      height: 300,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 290,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 280,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const SizedBox(height: 25),
                          MyTextField(
                            controller: namecontroller,
                            hinttext: 'Name',
                            obscuretext: false,
                          ),
                          const SizedBox(height: 10),
                          MyTextField(
                            controller: namecontroller,
                            hinttext: 'Email',
                            obscuretext: false,
                          ),
                          const SizedBox(height: 10),
                          MyTextField(
                            controller: passwordcontroller,
                            hinttext: 'Password',
                            obscuretext: true,
                          ),
                          const SizedBox(height: 10),
                          MyTextField(
                            controller: confirmpasswordcontroller,
                            hinttext: 'Confirm Password',
                            obscuretext: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                //login button
                MyButton(buttontext: 'SIGN UP', onTap: Signup),

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
                      'Already a user?',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      child: Text(
                        'LOG IN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/loginpage');
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
