// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninUi extends StatefulWidget {
  const SigninUi({super.key});

  @override
  State<SigninUi> createState() => _SigninUiState();
}

class _SigninUiState extends State<SigninUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 35.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/icon/images/logo.png',
                    width: 180.0,
                    height: 180.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welecome Back,',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Make it work, make it right, make it fast.',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
                      color: Colors.grey,
                    ),
                    hintText: 'E-Mail',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 25.0,
                      horizontal: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.fingerprint,
                      color: Colors.grey,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 25.0,
                      horizontal: 20.0,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'OR',
                ),
                SizedBox(
                  height: 20.0,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset(
                        'assets/icon/images/googlelogo.png',
                        width: 20.0,
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Sign-in with Google',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 125, 234, 241),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
