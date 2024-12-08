import 'package:flutter/material.dart';
class PavlovaRecipe extends StatelessWidget {
  const PavlovaRecipe({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // รูปภาพ
          Center(
            child: Image.network(
              'https://example.com/strawberry_pavlova.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,/////////////////
            ),
          ),
          const SizedBox(height: 16.0),
          // ชื่อเมนู
          const Text(
            'Strawberry Pavlova',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          // คำอธิบาย
          const Text(
            'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          // รายละเอียด (PREP, COOK, FEEDS)
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _DetailColumn(
                    icon: Icons.timer, label: 'PREP:', value: '25 min'),
                _DetailColumn(
                    icon: Icons.people, label: 'FEEDS:', value: '4-6'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailColumn extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailColumn({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        const SizedBox(height: 4.0),
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    );
  }
}
