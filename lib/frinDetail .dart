import 'package:flutter/material.dart';

class FriendDetail extends StatelessWidget {
  const FriendDetail({super.key});

  @override
  Widget build(BuildContext context) {
    var friend =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(friend['name']),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 53, 12, 36),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: myDisplay(context, friend),
      backgroundColor: const Color.fromARGB(255, 255, 233, 246),
    );
  }

  Widget myDisplay(BuildContext context, Map<String, dynamic> friend) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              friend['image'],
              fit: BoxFit.cover,
              height: 600,
            ),
          ),
          const SizedBox(height: 25),
          showFriendDetails(friend),
          const SizedBox(height: 25),
          detail(friend['description']),
          const SizedBox(height:25),
          backButton(context),
        ],
      ),
    );
  }

  Widget showFriendDetails(Map<String, dynamic> friend) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ชื่อจริง: ${friend['name']}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'ชื่อเล่น: ${friend['nickname']}',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          
        ],
      );

  Widget detail(String description) => Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Text(
              'รายละเอียด:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      );

  Widget backButton(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 61, 61, 61),
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Back'),
      );
}
