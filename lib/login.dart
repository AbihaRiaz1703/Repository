import 'package:flutter/material.dart';
import 'package:shoppingla/practice.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static const String id = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color.fromARGB(255, 212, 209, 216),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 67,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image(
                    //   height: 65,
                    //   width: 90,
                    //   image: AssetImage('image.png'),
                    // ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Coding\'z',
                          style: TextStyle(
                            color: Color.fromARGB(255, 17, 58, 105),
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                        Text(
                          'Keyz',
                          style: TextStyle(
                            color: Color.fromARGB(255, 17, 58, 105),
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 56,
                ),
                const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 58, 105),
                      fontSize: 26,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Food is Love & Love iS Food.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 58, 105),
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 212, 209, 216),
                      ),
                      fillColor: const Color.fromARGB(255, 20, 8, 70),
                      filled: true,
                      prefix: const Icon(
                        Icons.email_rounded,
                        color: Color.fromARGB(255, 177, 160, 214),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 33, 5, 85)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 33, 5, 85)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 212, 209, 216),
                      ),
                      fillColor: const Color.fromARGB(255, 20, 8, 70),
                      filled: true,
                      prefix: const Icon(
                        Icons.ac_unit_rounded,
                        color: Color.fromARGB(255, 177, 160, 214),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 33, 5, 85)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 33, 5, 85)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Practice(),
                          ));
                    },
                    child: Text('Let\'s Go!')),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Haven\'t got account yet?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'sign up?',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
