import 'package:flutter/material.dart';

class MylistViewWork extends StatelessWidget {
  const MylistViewWork({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friend List'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 53, 12, 36),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: myGrid(context),
      backgroundColor: const Color.fromARGB(255, 255, 233, 246),
    );
  }

  Widget myGrid(BuildContext ctx) {
    return GridView.builder(
      itemCount: friends.length,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 320,
        childAspectRatio: 1 / 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (ctx, index) => ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: buildTile(ctx, friends[index]),
      ),
    );
  }

  Widget buildTile(BuildContext ctx, Map<String, dynamic> friend) => GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: InkWell(
            // ห่อชื่อด้วย InkWell
            onTap: () {
              Navigator.pushNamed(
                ctx,
                '/ptd_dt',
                arguments: friend,
              );
            },
            child: Text(friend['name']),
          ),
          subtitle: InkWell(
            // ห่อชื่อเล่นด้วย InkWell
            onTap: () {
              Navigator.pushNamed(
                ctx,
                '/ptd_dt',
                arguments: friend,
              );
            },
            child: Text(friend['nickname']),
          ),
          trailing: InkWell(
            child: const Icon(
              Icons.zoom_in,
              color: Colors.white,
              size: 20,
            ),
            onTap: () {
              Navigator.pushNamed(
                ctx,
                '/ptd_dt',
                arguments: friend,
              );
            },
          ),
        ),
        child: InkWell(
          // ห่อรูปภาพด้วย InkWell
          onTap: () {
            Navigator.pushNamed(
              ctx,
              '/ptd_dt',
              arguments: friend,
            );
          },
          child: Image.network(
            friend['image'],
            fit: BoxFit.cover,
            height: 180,
            width: 180,
          ),
        ),
      );

  final List<Map<String, dynamic>> friends = const [
    {
      "id": 1,
      "name": "ธนดล สิงห์เถื่อน",
      "nickname": "ก็อต",
      "image":
          "https://www.thaipedigree.com/static/articles/e660dbabd7493aff4c39f40838fcb642ac51380e291c07c667797d76e33655f8.jpeg",
      "description": "ติดเกม ติดสาวสุดๆ เหมือนๆชาคริต ",
    },
    {
      "id": 2,
      "name": "ภวัฒ วรรณตรง",
      "nickname": "เปา",
      "image":
          "https://static.thairath.co.th/media/4DQpjUtzLUwmJZZSC4zCuyAdTBN01vZLBhmlg0ukLiMz.jpg",
      "description": "ติดดูหนังที่โรง เล่นดนตรี ชอบเรียน Code ที่สุดใน สาม โลก"
    },
    {
      "id": 3,
      "name": "จิดาภา แก้วสกุล",
      "nickname": "มิ้ม",
      "image": "https://ichef.bbci.co.uk/images/ic/1024x576/p0cwc3hp.jpg",
      "description": "ติดดูหนังที่โรง เล่นดนตรี ชอบเรียน Code ที่สุดใน สาม โลก"
    },
    {
      "id": 4,
      "name": "นธีพัฒน์ เถื่อนกวา",
      "nickname": "ธี",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFU3T18EvxySGZv8bsiPNucti_hQmHMDUds6M7IxfRRWyhYk1SnVnrT-0U6ynIL3BLNmQ&usqp=CAU",
      "description": "ชอบนอนฟังเพลงชิลๆ ตามสไตล์หนุ่มเทสโก้โลตัส"
    },
  ];
}
