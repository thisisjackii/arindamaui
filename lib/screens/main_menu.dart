import 'dart:ui';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
      return Scaffold(
        body: Center(
          child: Stack(
            children: [
            Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: screenHeight * 0.65,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 60,
                          child: SizedBox(
                            height: 80,
                            child: ElevatedButton(
                              onPressed: () {

                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(150, 100),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 14.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Dapatkan Premium',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontVariations: [
                                              FontVariation(
                                                'wght',
                                                400,
                                              ),
                                            ],
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Flexible(
                                        child: Text(
                                          'Rp.10.000/bulan',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontVariations: [
                                              FontVariation(
                                                'wght',
                                                800,
                                              ),
                                            ],
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          flex: 40,
                          child: SizedBox(
                            height: 80,
                            child: ElevatedButton(
                              onPressed: () {

                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(150, 100),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Buku',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontVariations: [
                                              FontVariation(
                                                'wght',
                                                400,
                                              ),
                                            ],
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          'Panduan',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontVariations: [
                                              FontVariation(
                                                'wght',
                                                400,
                                              ),
                                            ],
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
              Positioned(
                top: 420,
                left: 0,
                right: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: screenHeight * 0.65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 40,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 80,
                                  child: ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(150, 100),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25.0),
                                        ),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.money,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Keuangan',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontVariations: [
                                      FontVariation(
                                        'wght',
                                        600,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            flex: 40,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 80,
                                  child: ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(150, 100),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25.0),
                                        ),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.access_alarm,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Waktu',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontVariations: [
                                      FontVariation(
                                        'wght',
                                        600,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            flex: 40,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 80,
                                  child: ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(150, 100),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25.0),
                                        ),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.book,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Jurnaling',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontVariations: [
                                      FontVariation(
                                        'wght',
                                        600,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: screenHeight * 0.1,
                left: 16,
                right: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selamat Siang,",
                          style: TextStyle(
                            fontSize: 16,
                            fontVariations: [
                              FontVariation(
                                'wght',
                                400,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Julya Lemniscate',
                          style: TextStyle(
                            fontSize: 24,
                            fontVariations: [
                              FontVariation(
                                'wght',
                                600,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {

                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}