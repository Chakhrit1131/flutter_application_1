import 'package:flutter/material.dart';

class Favorite_food extends StatelessWidget {
  const Favorite_food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('อาหารที่ฉันชอบ ชาคริต อสังกรุณา'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          children: [
            container1(),
             container2()
          ],
        ),
      ),
    );
  }

  Widget container1() => Container(
        padding:const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              'assets/images/เฟรนฟราย.jpg',
              width: 400,
              height: 300,
            ),
            // เพิ่มช่องว่างระหว่างรูปกับข้อความ
            const Text(
              'French Fries',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

             const SizedBox(height: 5), // เพิ่มช่องว่างเล็กน้อยระหว่างข้อความ
            const Text(
              ' เฟรนช์ฟรายส์มีต้นกำเนิดจากยุโรป โดยมีการถกเถียงว่ามาจากเบลเยียมหรือฝรั่งเศส แต่ชื่อ "French Fries" มาจากทหารอเมริกันที่ชิมในเบลเยียมช่วงสงครามโลกครั้งที่ 1 ปัจจุบันเป็นอาหารยอดนิยมทั่วโลกที่มักเสิร์ฟในร้านฟาสต์ฟู้ดและมีหลายรูปแบบ เช่น แท่งยาวหรือราดชีส',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      );
  Widget container2() => Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      width: 300,
      child:const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "★★★★★",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.amber,
                ),
              ),
              Text(
                "170 Reviews",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children:  [
                  Text(
                    "PREP:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3   min",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children:  [
                  Text(
                    "COOK:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "5-8 min",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children:  [
                  Text(
                    "FEEDS:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "4-6",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

  
}
