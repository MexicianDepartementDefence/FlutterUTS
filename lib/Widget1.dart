// ignore_for_file: unused_import, file_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uts/Widget2.dart';

class Widget1 extends StatefulWidget {
  @override
  State<Widget1> createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {
  int selectedindex = 0;
  int selectedNavigatorindex = 0;
  void onitemTapped(int index) {
    setState(() {
      selectedNavigatorindex = index;
    });
  }

  Widget TombolKategori(int index, String Kata) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Container(
            height: 43,
            width: 100,
            decoration: BoxDecoration(
                color: selectedindex == index
                    ? Color(0xff00B14F)
                    : Color(0xffF2F2F7),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              Kata,
              style: TextStyle(
                  color: selectedindex == index ? Colors.white : Color(0xB3292D32),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appbar(),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            children: [
              Image.asset("Gambar/Gambar Diskon.png"),
              SizedBox(
                height: 24,
              ),
              Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Kategori",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xff292D32)),
            ),
            Text(
              "Lihat Semua",
              style: TextStyle(
                  color: Color(0xff00B14F), fontWeight: FontWeight.w400),
            )
          ],
        ),
        SizedBox(height: 16,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TombolKategori(0, "Semua"),
              SizedBox(width: 11,),
              TombolKategori(1, "Kemeja"),
SizedBox(width: 11,),
              TombolKategori(2, "Sepatu"),
SizedBox(width: 11,),
              TombolKategori(3, "Aksesoris")
            ],
          ),
        )
      ],
    ),
              SizedBox(
                height: 24,
              ),
              IsiKategori(
                  "Gambar/Orang-1.png",
                  "Gambar/sepatu-2.png",
                  "Batik Pria Lengan Panjang",
                  "Rp199.900",
                  "New Balance 992 Grey Original",
                  "Rp1.240.000",
                  context),
              SizedBox(
                height: 24,
              ),
              IsiKategori(
                  "Gambar/celana-3.png",
                  "Gambar/kacamata-4.png",
                  "Skinny Jeans Dark Blue Wanita",
                  "Rp379.900",
                  "Kacamata Baca Anti Radiasi Blue Ray",
                  "Rp125.000",
                  context),
              SizedBox(
                height: 24,
              ),
              IsiKategori(
                  "Gambar/orang-5.png",
                  "Gambar/jaket-6.png",
                  "Kemeja Pria Polos Lengan Pendek Oxford",
                  "Rp119.000",
                  "Human Greatness Hoodie Hitam",
                  "Rp229.000",
                  context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff00B14F),
          onTap: onitemTapped,
          currentIndex: selectedNavigatorindex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home_1),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.heart),
              label: "Favorit",
            ),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.task_square), label: "Transtraksi"),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.profile_circle), label: "Profil"),
          ]),
    );
  }
}

Widget appbar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      /*TextButton(
          onPressed: () {},
          child: Container(
            width: 250,
            height: 40,
            decoration: BoxDecoration(color: Color(0xffF2F2F7)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Iconsax.search_favorite,
                    color: Colors.black26,
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  "Cari Pakaian Pria",
                  style: TextStyle(color: Colors.black26),
                ),
              ],
            ),
          )),*/
      Container(
        padding: EdgeInsets.only(left: 16),
        width: 250,
        height: 48,
        decoration: BoxDecoration(
            color: Color(0xffF2F2F7), borderRadius: BorderRadius.circular(8)),
        child: TextFormField(
          style: TextStyle(color: Color(0xff292D32)),
          decoration: InputDecoration(
              icon: Icon(Iconsax.search_favorite),
              hintText: "Cari Pakaian Pria",
              border: InputBorder.none),
        ),
      ),
      Row(
        children: [
          Icon(
            Iconsax.notification,
            color: Colors.black,
            size: 26,
          ),
          SizedBox(
            width: 24,
          ),
          Icon(
            Iconsax.bag,
            color: Colors.black,
            size: 26,
          )
        ],
      )
    ],
  );
}

Widget IsiKategori(String Gambar1, String Gambar2, String Text1,
    String SubText1, String Text2, String SubText2, BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Widget2()));
        },
        child: Container(
          height: 250,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Gambar1,
                height: 150,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                Text1,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff292D32)),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                SubText1,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Color(0xff292D32)),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Widget2()));
        },
        child: Container(
          height: 250,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Gambar2,
                height: 150,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                Text2,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff292D32)),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                SubText2,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Color(0xff292D32)),
              )
            ],
          ),
        ),
      ),
    ],
  );
}
