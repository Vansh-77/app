import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool changestyle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        /*  appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          shadowColor: Colors.blue.withOpacity(0.6),
          title: const Center(
            child: Text("Welcome To My App",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 26)),
          ),
        ),*/
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            Form(
                child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Username",
                      labelText: "User Name",
                      fillColor: Colors.blueGrey.shade50,
                      filled: true,
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      labelText: "Password",
                      fillColor: Colors.blueGrey.shade50,
                      filled: true,
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Row(
                    children: [
                      const Text("Don't have an account? ",
                          style: TextStyle(fontSize: 15)),
                      GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "create one",
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    setState(() {
                      changestyle = true;
                    });
                    await Future.delayed(
                        const Duration(seconds: 2, microseconds: 50));
                    // ignore: use_build_context_synchronously
                    await Navigator.pushNamed(context, "/homepage");
                    setState(() {
                      changestyle = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    alignment: Alignment.center,
                    height: 50,
                    width: changestyle ? 50 : 120,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: changestyle
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(12),
                    ),
                    child: changestyle
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text("Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                  ),
                )
              ],
            ))
          ],
        ));
  }
}
