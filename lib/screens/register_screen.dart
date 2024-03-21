import 'dart:ui';

import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar',
          style: TextStyle(
            fontVariations: [
              FontVariation(
                  'wght', (800))
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Nama Lengkap',
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
                hintText: 'Nama Lengkap',
              ),
            ),
            const SizedBox(height: 20),
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
                hintText: 'Username',
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Email',
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
                  child: Icon(Icons.mail),
                ),
                hintText: 'Email',
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
                hintText: 'Ketikan Kata Sandi',
                prefixIcon: Opacity(
                  opacity: 0.3,
                  child: Icon(Icons.lock),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Konfirmasi Kata Sandi',
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
                hintText: 'Konfirmasi Kata Sandi',
                prefixIcon: Opacity(
                  opacity: 0.3,
                  child: Icon(Icons.lock),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Tanggal Lahir',
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
            InkWell(
              onTap: () => _selectDate(context),
              child: InputDecorator(
                decoration: const InputDecoration(
                  hintText: 'TTL',
                ),
                child: Text(
                  '${selectedDate.toLocal()}'.split(' ')[0],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFBB0022)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Daftar',
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
                  'Sudah Punya Akun?',
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
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: Text(
                    'Login disini',
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


