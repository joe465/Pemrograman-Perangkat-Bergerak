import 'package:flutter/material.dart';
import 'package:restaurant/makanan.dart';
import 'package:restaurant/style.dart';

class DetailPage extends StatelessWidget{
  final Makanan makanan;
  
  DetailPage({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Stack(
            children: [
            Image.asset(makanan.gambarUtama, scale: 0.5,),
            Row(
              children: [
                ButtonBack()
              ],)
            ],
          ),
          Container(
            color: headBgColor,
            child: Text(
              makanan.nama,
              textAlign: TextAlign.center,
              style : TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                attributeIcons(Icons.access_time_filled, makanan.waktuBuka),
                attributeIcons(Icons.local_fire_department_rounded, makanan.kalori),
                attributeIcons(Icons.monetization_on, makanan.harga),
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                makanan.detail,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: makanan.gambarLain.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Image.asset(makanan.gambarLain[index]);
                }
              ),
            )
          ],
        )
      ),
    );
  }

  Column attributeIcons(IconData icon, String text) {
    return Column(
                children: [
                  Icon(icon, color: iconColor),
                  Text(text, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)
                  )
                ],);
  }
}

class ButtonBack extends StatelessWidget {
  const ButtonBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
      )
    );
  }
}