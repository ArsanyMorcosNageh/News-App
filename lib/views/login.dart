import 'package:flutter/material.dart';

import 'package:news_application/views/signup.dart';

import 'home_view.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(70),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("News ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                    )),
                Text("Clouds",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                    )),
              ]),
            ),
            const Spacer(
              flex: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    'Email Address',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                showCursor: true,
                style: TextStyle(),
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Icon(
                      Icons.person_pin_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 24, 108, 147),
                  hintText: "    Email",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 18),

                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    'Passward',
                    style: TextStyle(color: Colors.orange, fontSize: 18),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                showCursor: true,
                obscureText: true,
                style: TextStyle(
                    //color: Color(0XFF455A64),
                    //backgroundColor: Color(0XFF455A64)
                    // background:Color(0XFF455A64)
                    ),
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  //<-- SEE HERE
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 24, 108, 147),
                  hintText: "    Password",

                  hintStyle: TextStyle(color: Colors.white, fontSize: 18),

                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              alignment: Alignment.centerRight,
              child: const Text(
                "Forgot Password?     ",
                style: TextStyle(
                  fontSize: 16,

                  fontWeight: FontWeight.w500,

                  color: Colors.orange, // Corrected FontWeight
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Spacer(
              flex: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(350, 60),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const HomeView();
                  }));
                },
                child: const Text("Login",
                    style: TextStyle(color: Colors.black, fontSize: 21)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Don’t have an account ?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 24, 108, 147),
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const SignUp();
                      }));
                    },
                    child: const Text("Sign Up",
                        style: TextStyle(color: Colors.orange, fontSize: 18)),
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 30,
            ),
          ],
        ),
      ),
    );
  }
}
