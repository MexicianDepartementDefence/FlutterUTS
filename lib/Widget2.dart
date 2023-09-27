// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors, non_constant_identifier_names, unused_element

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uts/Widget3.dart';

class Widget2 extends StatefulWidget {
  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
  int Stateindex = 0;

  bool statecinta = true;
  void tombolcinta() {
    setState(() {
      statecinta = !statecinta;
    });
  }

  Widget PilihProduk(int index, String kata) {
    return GestureDetector(
        onTap: () {
          setState(() {
            Stateindex = index;
          });
        },
        child: Container(
          width: 53,
          height: 51,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color:
                  Stateindex == index ? Color(0x1A00B14F) : Color(0xffF2F2F7),
              border: Border.all(
                  color: Stateindex == index
                      ? Color(0xff00B14F)
                      : Color(0xffF2F2F7))),
          child: Center(
            child: Text(
              kata,
              style: TextStyle(
                  color: Stateindex == index
                      ? Color(0xff00B14F)
                      : Color(0xB3292D32)),
            ),
          ),
        ));
  }

  Widget appbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text(
            "Detail Produk",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff292D32)),
          ),
        ),
        GestureDetector(
          onTap: tombolcinta,
          child: Image.asset(
statecinta
            ? "Gambar/Love Polos.png" : "Gambar/Love Merah.png",
            height: 26,
          ),
        )
      ],
    );
  }

  Widget DeskripsiProduk() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "New Balance 992 Grey Original",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22,
            color: Color(0xff292D32)),
      ),
      SizedBox(
        height: 11,
      ),
      Row(
        children: [
          Icon(
            Iconsax.star1,
            color: Colors.amber,
            size: 18,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            "4.8",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            "(102) | 67 ulasan",
            style: TextStyle(fontWeight: FontWeight.w400),
          )
        ],
      ),
      SizedBox(
        height: 17,
      ),
      RichText(
          text: TextSpan(
              text:
                  "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
              style: TextStyle(
                color: Color(
                  0xB3292D32,
                ),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              children: <TextSpan>[
            TextSpan(
                text: "Baca Selengkapnya",
                style: TextStyle(
                    color: Color(0xff00B14F),
                    fontWeight: FontWeight.w400,
                    fontSize: 16))
          ])),
/*Text("Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...", textAlign: TextAlign.justify,),


Text("Baca selengkapnya", style: TextStyle(),)*/
      SizedBox(
        height: 17,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pilih Ukuran",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          SizedBox(
            height: 18,
          ),
        ],
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Iconsax.arrow_left,
            size: 26,
            color: Colors.black,
          ),
        ),
        title: appbar(context),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "Gambar/sepatu-2.png",
                height: 382,
              ),
              SizedBox(
                height: 24,
              ),
              DeskripsiProduk(),
              SingleChildScrollView(
                child: Row(
                  children: [
                    PilihProduk(0, "39"),
                    SizedBox(
                      width: 17,
                    ),
                    PilihProduk(1, "40"),
                    SizedBox(
                      width: 17,
                    ),
                    PilihProduk(2, "41"),
                    SizedBox(
                      width: 17,
                    ),
                    PilihProduk(3, "42"),
                    SizedBox(
                      width: 17,
                    ),
                    PilihProduk(4, "43")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Color(0xfF2F2F7))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rp1.240.000",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Color(0xff292D32)),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Widget3()));
                  },
                  child: Container(
                    width: 183,
                    height: 47,
                    decoration: BoxDecoration(
                        color: Color(0xff00B14F),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      "Tambah Keranjang",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
