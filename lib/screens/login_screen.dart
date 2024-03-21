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

              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Username',
                  style: TextStyle(
                    fontVariations: [
                      FontVariation(
                        'wght',
                        600,
                      ),
                    ],
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Opacity(
                    opacity: 0.3,
                    child: Icon(Icons.person),
                  ),
                  hintText: 'Email or Username',
                ),
              ),


              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Kata Sandi',
                  style: TextStyle(
                    fontVariations: [
                      FontVariation(
                        'wght',
                        600,
                      ),
                    ],
                  ),
                ),
              ),


              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Opacity(
                      opacity: 0.3,
                      child: Icon(Icons.lock),
                  ),
                ),
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
                    ),
                  ),
                ),
              ),

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
                  SizedBox(height: 10),
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
            ],
          ),
        ),
      ),
    );
  }
}
