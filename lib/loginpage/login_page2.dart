import 'package:flutter/material.dart';
import 'package:login_page/routes/routes.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          Container(
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  "https://png.pngtree.com/thumb_back/fh260/background/20230519/pngtree-landscape-jpg-wallpapers-free-download-image_2573540.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: const Alignment(0, 0.7),
              child: Container(
                height: 400,
                width: 400,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Form(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: TextFormField(
                          onSaved: (val) {
                            PersonalGlobal.username = val;
                          },
                          validator: (val) =>
                              (val!.isEmpty) ? "Enter your username" : null,
                          decoration: InputDecoration(
                            focusColor: Colors.black,
                            contentPadding: const EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            label: const Text(
                              " User Name",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            prefixIcon: const Icon(Icons.person),
                          ),
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          onSaved: (val) {
                            PersonalGlobal.password = val;
                          },
                          validator: (val) =>
                              (val!.isEmpty) ? "Enter your password" : null,
                          decoration: InputDecoration(
                            focusColor: Colors.black,
                            contentPadding: const EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            label: const Text(
                              " Password",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            prefixIcon: const Icon(Icons.lock),
                          ),
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black,
                        ),
                      ),
                      const Text("Forgot Password"),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Align(
                          alignment: const Alignment(0, 0.6),
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(3, 3),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text("LogIn"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
