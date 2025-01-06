import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product '),),
      body:  Center(
        child: Column(
          children: [
           const SizedBox(height: 30,), 
           const Text('Product Page'),
           const SizedBox(height: 60,),
            btnDetail(context)
            ],

        ),
      ),
    );
  }
  Widget btnDetail(BuildContext ctx){
    return TextButton(
      onPressed: () => Navigator.push(ctx
      ,MaterialPageRoute(builder: (ctx)=>const ProductPage())),
     child:const Text('Product Detail'));
  }
}