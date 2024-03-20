import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masuk',
            style: TextStyle(
              fontVariations: [
              FontVariation(
              'wght', (800))
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(labelText: 'Email or Username'),
              ),

              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Text(
                    'Lupa Kata Sandi?',
                    style: Theme.of(context).textTheme.button!.copyWith(
                      fontVariations: [
                        FontVariation('wght', 800),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Implement login logic
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFBB0022)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('Masuk',
                    style: TextStyle(
                      fontVariations: [
                        FontVariation(
                            'wght', (700))
                      ],
                    ),),
                ),
              ),

              // ElevatedButton(
              //   onPressed: () {
              //     // Implement login logic
              //   },
              //   child: const Text('Login'),
              // ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    'Belum Punya Akun?',
                    style: TextStyle(
                      fontVariations: [
                        FontVariation(
                            'wght', (500))
                      ],
                    ),
                  ),
                  SizedBox(height: 10), // Add some space between the texts
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/register');
                    },
                    child: Text(
                      'Daftar disini',
                      style: Theme.of(context).textTheme.button!.copyWith(
                        fontVariations: [
                          FontVariation('wght', 800),
                        ],
                      ),

                    ),
                  ),
                ],
              ),


              // TextButton(
              //   onPressed: () {
              //     Navigator.pushReplacementNamed(context, '/register');
              //   },
              //   child: Text(
              //       'Don\'t have an account yet? Register',
              //       style: Theme.of(context).textTheme.bodyText2,),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
