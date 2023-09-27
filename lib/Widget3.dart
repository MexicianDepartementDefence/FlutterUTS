// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uts/Widget2.dart';

class Widget3 extends StatefulWidget {
  @override
  State<Widget3> createState() => _Widget3State();
}

class _Widget3State extends State<Widget3> {
  int index_sepatu = 1;
  int index_kacamate = 1;
  int index_jaket = 1;
  List<double> Harga_sepatu = [
    0.0,
    1240000.0,
    2480000.0,
    3720000.0,
    4960000.0,
    6200000.0
  ];
  List<double> Harga_kacamate = [
    0.0,
    450000.0,
    900000.0,
    1350000.0,
    1800000.0,
    2250000.0
  ];
  List<double> Harga_jaket = [0.0, 165900, 331800, 497700, 663600, 829500];
  int ongkir = 14000;

  Widget totalHarga() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Subtotal",
              style: TextStyle(
                  color: Color(0xB3292D32),
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            Text(
              "Rp ${Harga_kacamate[index_kacamate] + Harga_sepatu[index_sepatu] + Harga_jaket[index_jaket]}",
              style: TextStyle(
                  color: Color(0xff292D32),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ongkir",
              style: TextStyle(
                  color: Color(0xB3292D32),
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            Text(
              "Rp $ongkir",
              style: TextStyle(
                  color: Color(0xff292D32),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            )
          ],
        ),
        SizedBox(
          height: 48,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total",
              style: TextStyle(
                  color: Color(0xB3292D32),
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            Text(
              "Rp ${Harga_kacamate[index_kacamate] + Harga_sepatu[index_sepatu] + Harga_jaket[index_jaket] + ongkir}",
              style: TextStyle(
                  color: Color(0xff292D32),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 26,
            height: 26,
            child: Icon(
              Iconsax.arrow_left,
              color: Colors.black,
              size: 26,
            ),
          ),
        ),
        title: appbar(context),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 16, 24, 0),
          child: Column(
            children: [
              deskripsiAlamat(),
              SizedBox(
                height: 24,
              ),
              sepatu(),
              SizedBox(
                height: 24,
              ),
              kacamata(),
              SizedBox(
                height: 24,
              ),
              jaket(),
              SizedBox(
                height: 24,
              ),
              totalHarga(),
              SizedBox(
                height: 24,
              ),
              tambahKeranjang(context)
            ],
          ),
        ),
      ),
    );
  }

  Container kacamata() {
    return Container(
        width: 382,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "Gambar/kacamata-4.png",
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kacamata Baca ...",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "-2 Hitam",
                    style: TextStyle(
                        color: Color(0x3B292D32), fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Rp ${Harga_kacamate[index_kacamate]}",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff292D32)),
                  )
                ],
              ),
            ),
            Container(
              width: 92,
              height: 44,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffF2F2F7), width: 1),
                  borderRadius: BorderRadius.circular(1),
                  color: Color(0xffFFFFF)),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        if (index_kacamate > 0) {
                          setState(() {
                            index_kacamate = index_kacamate - 1;
                          });
                        }
                      },
                      child: Icon(
                        Iconsax.minus,
                        size: 20,
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      index_kacamate.toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        if (index_kacamate < Harga_kacamate.length - 1) {
                          setState(() {
                            index_kacamate = index_kacamate + 1;
                          });
                        }
                      },
                      child: Icon(
                        Iconsax.add,
                        size: 20,
                        color: Color(0xff00B14F),
                      ))
                ],
              ),
            ),
          ],
        ));
  }

  Container jaket() {
    return Container(
        width: 382,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "Gambar/jaket-6.png",
              height: 100,
            ),
            SizedBox(
              width: 7,
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Human Greatness ...",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "XL, Hitam",
                    style: TextStyle(
                        color: Color(0x3B292D32), fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Rp ${Harga_jaket[index_jaket]}",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff292D32)),
                  )
                ],
              ),
            ),
            Container(
              width: 92,
              height: 44,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffF2F2F7), width: 1),
                  borderRadius: BorderRadius.circular(1),
                  color: Color(0xffFFFFF)),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        if (index_jaket > 0) {
                          setState(() {
                            index_jaket = index_jaket - 1;
                          });
                        }
                      },
                      child: Icon(
                        Iconsax.minus,
                        size: 20,
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      index_jaket.toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        if (index_jaket < Harga_jaket.length - 1) {
                          setState(() {
                            index_jaket = index_jaket + 1;
                          });
                        }
                      },
                      child: Icon(
                        Iconsax.add,
                        size: 20,
                        color: Color(0xff00B14F),
                      ))
                ],
              ),
            ),
          ],
        ));
  }

  Container sepatu() {
    return Container(
        width: 382,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "Gambar/sepatu-2.png",
              height: 100,
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Balance 992 ...",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "40",
                    style: TextStyle(
                        color: Color(0x3B292D32), fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Rp ${Harga_sepatu[index_sepatu]}",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff292D32)),
                  )
                ],
              ),
            ),
            Container(
              width: 92,
              height: 44,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffF2F2F7), width: 1),
                  borderRadius: BorderRadius.circular(1),
                  color: Color(0xffFFFFF)),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        if (index_sepatu > 0) {
                          setState(() {
                            index_sepatu = index_sepatu - 1;
                          });
                        }
                      },
                      child: Icon(
                        Iconsax.minus,
                        size: 20,
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      index_sepatu.toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        if (index_sepatu < Harga_sepatu.length - 1) {
                          setState(() {
                            index_sepatu = index_sepatu + 1;
                          });
                        }
                      },
                      child: Icon(
                        Iconsax.add,
                        size: 20,
                        color: Color(0xff00B14F),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}

Widget appbar(BuildContext context) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 85, right: 112),
        child: Text(
          "Keranjang",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      Image.asset(
        "Gambar/Settingan.png",
        height: 26,
      )
    ],
  );
}

Widget deskripsiAlamat() {
  return Container(
    padding: EdgeInsets.fromLTRB(18, 17, 18, 0),
    width: 382,
    height: 106,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Color(0xffF2F2F7)),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Iconsax.location),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Dikirim Ke",
                  style: TextStyle(
                      color: Color(0xB3292D32), fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Text(
              "Ubah",
              style: TextStyle(
                  color: Color(0xff00B14F), fontWeight: FontWeight.w400),
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35, right: 42),
          child: Text(
            "Jakarta, Cibubur, Kota Wisata Madrid No 23",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        )
        /*Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
Text("Jakarta, Cibubur, Kota Wisata Madrid No 23", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),)
      ],
    )*/
      ],
    ),
  );
}

Widget tambahKeranjang(BuildContext context) {
  return TextButton(
      onPressed: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xff00B14F),
        ),
        child: Center(
            child: Text(
          "Tambah Keranjang",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        )),
      ));
}
