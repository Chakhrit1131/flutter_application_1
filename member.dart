import 'package:flutter/material.dart';

import 'MemberLogin.dart';

class MemberPage extends StatelessWidget {
  const MemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Member'),),
      body:  Center(
        child: Column(
          children: [
           const SizedBox(height: 30,), 
           const Text('Member Page'),
           const SizedBox(height: 60,),
            btnLogin(context)
            ],

        ),
      ),
    );
  }
    Widget btnLogin(BuildContext ctx){
    return TextButton(
      onPressed: () => Navigator.push(ctx
      ,MaterialPageRoute(builder: (ctx)=>const MemberLogin())),
     child:const Text('Member Login >> '));
  }
}