import 'package:bottom_navi_app/help.dart';
import 'package:bottom_navi_app/home.dart';
import 'package:bottom_navi_app/member.dart';
import 'package:bottom_navi_app/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage()
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _navItemIndex = 0; //ลำดับที่ของปุ่มที่เลือก
  var pages =const <Widget> [HomePage(),ProductPage(),MemberPage(),HelpPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BoyyomNavigationBar'),centerTitle: true,),
      body: pages[_navItemIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal,
        fixedColor: Colors.white,//สีปุ่มที่ถูฏเลือก
        showSelectedLabels: true, //แสดงข้อความบนปุ่มที่ถูกเลือก
        showUnselectedLabels: true,//แสดงข้อความบนปุ่มที่ไม่ถูกเลือก
        currentIndex: _navItemIndex,
        items: btnNaviItem(),
        onTap: (index){ //เมื่อมีการคลิกที่ปุ่ม
          setState(() {
            _navItemIndex = index;
          });
        },
        ),
    );
  }
  List<BottomNavigationBarItem> btnNaviItem(){
    var iconItem =[Icons.home,Icons.shopping_cart,Icons.person,Icons.help];
    var labelItem =['Home',"Product",'Member','Help'];
    var bgcolorItem =[Colors.deepPurple,Colors.indigo,Colors.teal,Colors.brown];
    
    List<BottomNavigationBarItem> mybtn;
    BottomNavigationBarItem createItem(index){
      return BottomNavigationBarItem(
        icon: Icon(iconItem[index]),
        label: labelItem[index],
        backgroundColor: bgcolorItem[index]
        );
    }
    mybtn = List.generate(iconItem.length, createItem);
    return mybtn;
  }
}