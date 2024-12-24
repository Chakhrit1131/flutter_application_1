/*import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  final List<Map<String, dynamic>> friends = const [
    {
      "id": 1,
      "name": "จิดาภา แก้วสกุล",
      "nickname": "มิ้ม",
      "image": "https://scontent.fbkk6-1.fna.fbcdn.net/v/t39.30808-6/469351663_1624804021576376_7481884059404318461_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=qgZnnpYoJ2gQ7kNvgFIeO7Q&_nc_zt=23&_nc_ht=scontent.fbkk6-1.fna&_nc_gid=Awd0ihRr-aiHL0lxRjIhRCe&oh=00_AYDJAujjjs18uPAc1kWl6Yo9wRLbdnLnHKK6t-xG5cV_ZQ&oe=67703251",
      "description": "ชอบอ่านนิยาย และก็ ชอบนอน"
    },
    {
      "id": 2,
      "name": "วีรวรรณ เผ่าผาง",
      "nickname": "แพรว",
      "image": "https://scontent.fbkk6-2.fna.fbcdn.net/v/t39.30808-6/440150716_747529707559361_8541811663944910811_n.jpg?stp=dst-jpg_p526x296_tt6&_nc_cat=101&ccb=1-7&_nc_sid=127cfc&_nc_ohc=QE7IZdkfC24Q7kNvgHFKAj5&_nc_zt=23&_nc_ht=scontent.fbkk6-2.fna&_nc_gid=AOnmnnq5VK9GvfySMdIG2Tg&oh=00_AYBMjHOsRJbzxzH8xepsLs_IDr6-D_e6NTJYs9i9yvWyZw&oe=67703EAE",
      "description": "ชอบนอนอย่างเดียว"
    },
    {
      "id": 3,
      "name": "ธนดล สิงห์เถื่อน",
      "nickname": "ก็อต",
      "image": "https://scontent.fbkk6-1.fna.fbcdn.net/v/t39.30808-6/307990377_2578755855595244_2911540551157136463_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=YUI4mGQZ0H8Q7kNvgGrlykL&_nc_zt=23&_nc_ht=scontent.fbkk6-1.fna&_nc_gid=Am1fZ_qdXRFLtKksKhwKF71&oh=00_AYC45hla_jQR4fevjTZpKVrD5ZeijH962XhSpyxapMdm9A&oe=67702E2E",
      "description": "ชอบเล่นเกมเป็นอย่างมาก"
    },
    {
      "id": 4,
      "name": "พีรพัฒน์ แก้วธานี",
      "nickname": "โฟค",
      "image": "https://scontent.fbkk6-1.fna.fbcdn.net/v/t1.6435-9/118187641_1009528726155520_782145271812095653_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=vuf4BRtErBQQ7kNvgHHM0Re&_nc_zt=23&_nc_ht=scontent.fbkk6-1.fna&_nc_gid=AG9QK8QvuAe_rq09k5QG-UH&oh=00_AYCjSyW2oybsbneiDJY-6eT-KR6xdWRB7kWbpXfamB-kfw&oe=6791DF59",
      "description": "ชอบดูบอล ชอบเล่นดนดรี"
    },
    {
      "id": 5,
      "name": "นนท์กฤช แซ่โค้ว",
      "nickname": "ฟิล์ม",
      "image": "https://scontent.fbkk6-1.fna.fbcdn.net/v/t39.30808-6/362920421_1997153567299257_797612342820848950_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=SARJbeVC2LsQ7kNvgGDrkCK&_nc_zt=23&_nc_ht=scontent.fbkk6-1.fna&_nc_gid=A-dQXX96Md9AwDkFmL3OM4K&oh=00_AYDcMucrQZTpVqZSeyLLzByMx0untWtdfbUny1ApBGs3HQ&oe=67704DA7",
      "description": "ชอบนอนมากที่สุด"
    },
    {
      "id": 6,
      "name": "นธีพัฒน์ เถื่อนกวา",
      "nickname": "นธี",
      "image": "https://scontent.fbkk6-2.fna.fbcdn.net/v/t39.30808-6/318899666_1300186363889608_6603733509399993435_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=xbwR_qUYee0Q7kNvgETPMDk&_nc_zt=23&_nc_ht=scontent.fbkk6-2.fna&_nc_gid=AXZp0Fcqu2-040EL_VkNvTq&oh=00_AYDQJN73TsiYvQaCRKS_TZ34wFCRZS20zTRgJrVNn2qK2g&oe=67702CA2",
      "description": "ชอบนอนฟังเพลงชิลๆ คลูๆ"
    },
    {
      "id": 7,
      "name": "คริสเตียนโน โรนัลโด้",
      "nickname": "บักโด้",
      "image": "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSI1j-rO5YY889jxE1qA8NTq0ucTY9QdmF2sRl5Aje--VcWfFXZltdU9HS5srCZz5xa5C1HqTEgVbINBxG8-f2DQdBmr1F6op89D5MaRdn9gQKAboUes1DVIVXheKCXQM5s24mZ0XopSg",
      "description": "ชอบเตะบอล และชอบการแข่งขัน"
    },
    {
      "id": 8,
      "name": "อ็องเดร โอนานา",
      "nickname": "นิ่ม",
      "image": "data:image/webp;base64,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Lm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KCQk8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOklwdGM0eG1wQ29yZT0iaHR0cDovL2lwdGMub3JnL3N0ZC9JcHRjNHhtcENvcmUvMS4wL3htbG5zLyIgICB4bWxuczpHZXR0eUltYWdlc0dJRlQ9Imh0dHA6Ly94bXAuZ2V0dHlpbWFnZXMuY29tL2dpZnQvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwbHVzPSJodHRwOi8vbnMudXNlcGx1cy5vcmcvbGRmL3htcC8xLjAvIiAgeG1sbnM6aXB0Y0V4dD0iaHR0cDovL2lwdGMub3JnL3N0ZC9JcHRjNHhtcEV4dC8yMDA4LTAyLTI5LyIgeG1sbnM6eG1wUmlnaHRzPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvcmlnaHRzLyIgZGM6UmlnaHRzPSIyMDI0IFZpc2lvbmhhdXMiIHBob3Rvc2hvcDpDcmVkaXQ9IlZpc2lvbmhhdXMvR2V0dHkgSW1hZ2VzIiBHZXR0eUltYWdlc0dJRlQ6QXNzZXRJRD0iMjE5MDQ1MTM3OCIgeG1wUmlnaHRzOldlYlN0YXRlbWVudD0iaHR0cHM6Ly93d3cuZ2V0dHlpbWFnZXMuY29tL2V1bGE/dXRtX21lZGl1bT1vcmdhbmljJmFtcDt1dG1fc291cmNlPWdvb2dsZSZhbXA7dXRtX2NhbXBhaWduPWlwdGN1cmwiIHBsdXM6RGF0YU1pbmluZz0iaHR0cDovL25zLnVzZXBsdXMub3JnL2xkZi92b2NhYi9ETUktUFJPSElCSVRFRC1FWENFUFRTRUFSQ0hFTkdJTkVJTkRFWElORyIgPgo8ZGM6Y3JlYXRvcj48cmRmOlNlcT48cmRmOmxpPlZpc2lvbmhhdXM8L3JkZjpsaT48L3JkZjpTZXE+PC9kYzpjcmVhdG9yPjxkYzpkZXNjcmlwdGlvbj48cmRmOkFsdD48cmRmOmxpIHhtbDpsYW5nPSJ4LWRlZmF1bHQiPk1BTkNIRVNURVIsIEVOR0xBTkQgLSBERUNFTUJFUiAxNTogTWFuY2hlc3RlciBVbml0ZWQgZ29hbGtlZXBlciBBbmRyZSBPbmFuYSBsaW5lcyB1cCBiZWZvcmUgdGhlIFByZW1pZXIgTGVhZ3VlIG1hdGNoIGJldHdlZW4gTWFuY2hlc3RlciBDaXR5IEZDIGFuZCBNYW5jaGVzdGVyIFVuaXRlZCBGQyBhdCBFdGloYWQgU3RhZGl1bSBvbiBEZWNlbWJlciAxNSwgMjAyNCBpbiBNYW5jaGVzdGVyLCBFbmdsYW5kLiAoUGhvdG8gYnkgVmlzaW9uaGF1cy9HZXR0eSBJbWFnZXMpPC9yZGY6bGk+PC9yZGY6QWx0PjwvZGM6ZGVzY3JpcHRpb24+CjxwbHVzOkxpY2Vuc29yPjxyZGY6U2VxPjxyZGY6bGkgcmRmOnBhcnNlVHlwZT0nUmVzb3VyY2UnPjxwbHVzOkxpY2Vuc29yVVJMPmh0dHBzOi8vd3d3LmdldHR5aW1hZ2VzLmNvbS9kZXRhaWwvMjE5MDQ1MTM3OD91dG1fbWVkaXVtPW9yZ2FuaWMmYW1wO3V0bV9zb3VyY2U9Z29vZ2xlJmFtcDt1dG1fY2FtcGFpZ249aXB0Y3VybDwvcGx1czpMaWNlbnNvclVSTD48L3JkZjpsaT48L3JkZjpTZXE+PC9wbHVzOkxpY2Vuc29yPgoJCTwvcmRmOkRlc2NyaXB0aW9uPgoJPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KPD94cGFja2V0IGVuZD0idyI/Pgo=",
      "description": "ชอบเตะบอล แต่เป็นประตูนะ"
    },

  ];

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
      backgroundColor: const Color.fromARGB(255, 252, 183, 223),
    );
  }

  Widget myGrid(BuildContext ctx) {
    return GridView.builder(
      itemCount: friends.length,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 5,
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
          title: Text(friend['name']),
          subtitle: Text(friend['nickname']),
          trailing: InkWell(
            child: const Icon(
              Icons.zoom_in,
              size: 32,
              color: Colors.white,
            ),
            onTap: () => {
              Navigator.pushNamed(
                ctx,
                '/ptd_dt',
                arguments: friend,
              )
            },
          ),
        ),
        child: Image.network(
          friend['image'],
          fit: BoxFit.cover,
        ),
      );
}*/