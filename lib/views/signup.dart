import 'package:flutter/material.dart';
import 'package:news_application/views/home_view.dart';
//import 'home_view.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                    'Full Name',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
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
                      Icons.person_outline_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 24, 108, 147),
                  hintText: "    Username",
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
                    'Email Address',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
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
                    'Password',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                showCursor: true,
                obscureText: true,
                style: TextStyle(),
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 24, 108, 147),
                  hintText: "    Password",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                  counterStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Spacer(
              flex: 30,
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
                child: const Text("Sign Up",
                    style: TextStyle(color: Colors.black, fontSize: 21)),
              ),
            ),
            const Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Text("Already have an account ?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 24, 108, 147),
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const Login();
                      }));
                    },
                    child: const Text("Login",
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
